//
//  iDineApp.swift
//  iDine
//
//  Created by Kyle Morton on 8/16/22.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
