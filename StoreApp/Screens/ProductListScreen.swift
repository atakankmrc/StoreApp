//
//  ProductListScreen.swift
//  StoreApp
//
//  Created by Atakan Kömürcü on 30.11.2022.
//

import SwiftUI

struct ProductListScreen: View {
    
    let category: Category
    @EnvironmentObject private var storeModel: StoreModel
    
    var body: some View {
        List(storeModel.products, id: \.id) { product in
            ProductCellView(product: product)
        }
        .listStyle(.plain)
        .task {
            do {
                try await storeModel.fetchProductsByCategory(category.id)
            } catch {
                print(error)
            }
        }.navigationTitle(category.name)
    }
}

struct ProductListScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProductListScreen(category: Category(id: 1, name: "Clothes", image: URL(string: "https://placeimg.com/640/480/any?r=0.591926261873231")!))
                .environmentObject(StoreModel())
        }
    }
}
