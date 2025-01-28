//
//  CartViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import Foundation
import UIKit
import SwiftUI

class CartViewModel: ObservableObject {
    
    // MARK: - Published Properties
    /// The model representing the cart data.
    @Published var cart: CartModel
    // The selected payment method's ID from the available list of payment methods.
    @Published var selectedMethodID: UUID?
    /// The discount code entered by the user.
    @State var discountCode: String = ""
    
    
    /// A list of available payment methods for the user to choose from.
    @Published var patmentMethodList: [PaymentMethod] = [
        PaymentMethod(name: "Card Payment", iconName: [cartImages.img_card.rawValue, cartImages.img_americanExpress.rawValue, cartImages.img_visa.rawValue, cartImages.img_logo.rawValue], description: ""),
        PaymentMethod(name: "STC Pay", iconName: [cartImages.img_StcPay.rawValue], description: ""),
        PaymentMethod(name: "Apple Pay", iconName: [cartImages.img_applePay.rawValue], description: ""),
        PaymentMethod(name: "Click Payt", iconName: [cartImages.img_clickpay.rawValue], description: ""),
        PaymentMethod(name: "Cash On Delivery", iconName: [cartImages.img_cashOnDelivery.rawValue], description: "Pay cash on delivery without additional fees")
    ]
    
    /// The subtotal price of the cart before applying any discounts or additional charges.
    @Published var subTotal: String = "71.29 SAR"
    /// The shipping charges for the cart.
    @Published var shippingCharges: String = "5.00 SAR"
    /// The discount applied to the cart.
    @Published var discount: String = "5.00 SAR"
    /// The total price of the cart after applying discounts and adding shipping charges.
    @Published var total: String = "71.29 SAR"
    
    /// Initializes the `CartViewModel` with a provided `CartModel`.
    ///
    /// - Parameter cart: The `CartModel` representing the current state of the cart.
    init(cart: CartModel) {
        self.cart = cart
    }
}
