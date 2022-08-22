//
//  ItemDetails.swift
//  iDine
//
//  Created by Kyle Morton on 8/21/22.
//

import SwiftUI

struct ItemDetails: View {
    let item: MenuItem;
    
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
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ItemDetails(item: MenuItem.example)
            ItemDetails(item: MenuItem.example)
        }
    }
}
