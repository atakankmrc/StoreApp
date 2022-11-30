//
//  Category.swift
//  StoreApp
//
//  Created by Atakan Kömürcü on 28.11.2022.
//

import Foundation

struct Category: Codable, Hashable {
    let id: Int
    let name: String
    let image: URL
}

extension Category {
    static var preview: Category {
        Category (id: 1, name: "Clothes", image: URL(string:"https://placeimg.com/640/480/any?r=0.8807778235430017")!)
    }
}
