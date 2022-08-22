//
//  ContentView.swift
//  iDine
//
//  Created by Kyle Morton on 8/16/22.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json");
    
    // HStack - Align horizontally side-by-side
    // VStack - Stack elements one on top of the other
    // ZStack - Stack subsequent elements on top of the first element
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            NavigationLink(destination: ItemDetails(item: item) ) {
                                ItemRow(item: item)
                            }
                            
                        }
                    }
                }
            }.navigationTitle("Menu")
                .listStyle(.grouped);
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
