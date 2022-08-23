//
//  MainView.swift
//  iDine
//
//  Created by Kyle Morton on 8/21/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MenuView()
                .tabItem{
                    Label("Menu", systemImage: "list.dash")
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Order())
    }
}
