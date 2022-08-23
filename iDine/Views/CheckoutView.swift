//
//  CheckoutView.swift
//  iDine
//
//  Created by Kyle Morton on 8/22/22.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    
    @State private var paymentType = "Cash"
    
    var body: some View {
        Form {
            Picker("Payment Method", selection: $paymentType) {
                ForEach(paymentTypes, id: \.self) {
                    Text($0)
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}
