//
//  ServiceLocator.swift
//  ThatLocator
//
//  Created by Vlad Lytvynenko on 22.08.20.
//  Copyright © 2020 Vlad Lytvynenko. All rights reserved.
//

import Foundation

@propertyWrapper
public struct Injected<T> {
    public let wrappedValue: T
    
    public init() {
        let locator = ServiceLocator.global
        wrappedValue = locator.resolve()
    }
}

@propertyWrapper
public class ScopedInjected<T> {
    public struct Scope {
        public var scope: AnyHashable?
    }
    
    private var _value: T!
    public var projectedValue = Scope() {
        didSet {
            if _value != nil {
                assertionFailure("Attempt setting scope after initialisation.")
            }
        }
    }
    
    public var wrappedValue: T {
        if _value == nil {
            guard let scope = projectedValue.scope else {
                fatalError("Scope not set for \(T.self)")
            }
            
            let locator = ServiceLocator.global
            _value = locator.resolve(scopedFor: scope) as T
        }
        
        return _value
    }
    
    public init() {}
}

private class ServiceLocator {
    static let global = ServiceLocator()
    
    private let scopeMap = NSMapTable<NSString, AnyObject>.strongToWeakObjects()
    
    fileprivate var registry = [ObjectIdentifier: Any]()
    
    func resolve<Service>() -> Service {
        let identifier = ObjectIdentifier(Service.self)
        guard let factory = registry[identifier] as? () -> Service else {
            fatalError("No registered factory for \(Service.self)")
        }
        
        return factory()
    }

    func resolve<Service, Scope: Hashable>(scopedFor scope: Scope) -> Service {
        let service: Service
        let serviceIdentifier = ObjectIdentifier(Service.self)
        let serviceKey = NSString(string: "\(serviceIdentifier)_\(scope.hashValue)")
        if let scopedObject = scopeMap.object(forKey: serviceKey),
           let scopedService = scopedObject as? Service {
            service = scopedService
        }
        else {
            service = resolve()
            scopeMap.setObject(service as AnyObject, forKey: serviceKey)
        }
        
        return service
    }
}

public final class ServiceRegistry {
    public static let global = ServiceRegistry()
    
    public func register<Service>(_ factory: @escaping @autoclosure () -> Service) {
        let locator = ServiceLocator.global
        let identifier = ObjectIdentifier(Service.self)
        locator.registry[identifier] = factory
    }
}
