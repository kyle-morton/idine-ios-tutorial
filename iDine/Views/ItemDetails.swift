//
//  ItemDetails.swift
//  iDine
//
//  Created by Kyle Morton on 8/21/22.
//

import SwiftUI

struct ItemDetails: View {
    let item: MenuItem;
    
    // EnvObject gives us access to the StateObj defined at the app level
    @EnvironmentObject var order: Order;
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing)  {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()

            Button("Order This") {
                order.add(item: item)
            }.font(.headline)

            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetails(item: MenuItem.example)
            .environmentObject(Order())
    }
}
