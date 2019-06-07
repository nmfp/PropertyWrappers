//
//  PropertyWrapper.swift
//  PropertyWrappers
//
//  Created by Nuno Pereira on 07/06/2019.
//  Copyright © 2019 nMfpCoding. All rights reserved.
//

import Foundation

@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T
    
    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var value: T {
        get {
            UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
