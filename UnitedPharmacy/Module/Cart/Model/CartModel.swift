//
//  CartModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import Foundation


struct CartModel {
    /// A list of available payment methods for the cart.
    /// Each payment method is represented by a `PaymentMethod` object.
    var paymentMethodList: [PaymentMethod] = []
    
}
struct PaymentMethod: Identifiable {
    /// A unique identifier for each payment method.
    let id = UUID()
    /// The name of the payment method (e.g., "Credit Card", "PayPal").
    let name: String
    /// A list of icon names that represent the payment method's associated icons.
    let iconName: [String]
    /// An optional description that gives more information about the payment method.
    let description: String?
}


