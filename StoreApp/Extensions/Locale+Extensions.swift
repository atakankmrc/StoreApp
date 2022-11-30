//
//  Locale+Extensions.swift
//  StoreApp
//
//  Created by Atakan Kömürcü on 30.11.2022.
//

import Foundation

extension Locale {
    
    static var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }
    
}
