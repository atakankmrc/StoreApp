//
//  StoreAppApp.swift
//  StoreApp
//
//  Created by Atakan Kömürcü on 28.11.2022.
//

import SwiftUI

@main
struct StoreAppApp: App {
    @StateObject private var storeModel = StoreModel()
    
    var body: some Scene {
        WindowGroup {
            CategoryListScreen().environmentObject(storeModel)
        }
    }
}
