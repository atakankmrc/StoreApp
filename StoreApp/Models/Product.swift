//
//  Product.swift
//  StoreApp
//
//  Created by Atakan Kömürcü on 30.11.2022.
//

import Foundation

struct Product: Codable {
    
    var id: Int?
    let title: String
    let price: Double
    let description: String
    let images: [URL]?
    let category: Category
    
}

extension Product {
    
    static var preview: Product {
        Product(id: 1, title: "Handmade Table", price: 524, description: "Handmade table by usta", images: [URL(string: "https://placeimg.com/640/480/any?r=0.8807778235430017")!], category: Category.preview)
    }
    
}
