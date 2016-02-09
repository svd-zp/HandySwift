//
//  DictionaryExtension.swift
//  HandySwift
//
//  Created by Cihat Gündüz on 16.01.16.
//  Copyright © 2016 Flinesoft. All rights reserved.
//

import Foundation

extension Dictionary {

    /// Initializes a new `Dictionary` and fills it with keys and values arrays.
    /// 
    /// - Parameters:
    ///   - keys:       The `Array` of keys.
    ///   - values:     The `Array` of values.
    /// - Returns: A new `Dictionary` instance with prefilled keys and values or `nil` if size of `Array`s different.
    public init?(keys: [Key], values: [Value]) {
        
        guard keys.count == values.count else {
            return nil
        }
        
        self.init()
        
        for (index, key) in keys.enumerate() {
            self[key] = values[index]
        }
        
    }
    
}
