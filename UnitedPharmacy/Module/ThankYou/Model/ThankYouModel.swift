//
//  ThankYouModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 27/01/25.
//

import Foundation

struct ThankYouModel {
    
    // MARK: - Properties
    
    /// The unique transaction identifier for the purchase.
    let transactionId: String
    /// The date when the transaction took place.
    let date: String
    /// The time when the transaction took place.
    let time: String
    /// The delivery option selected by the user.
    let deliveryOption: String
    /// The payment method used for the transaction.
    let paymentMethod: String
    /// The total amount of the transaction.
    let totalAmount: String
    
    
    /// Initializes a new instance of `ThankYouModel` with the provided details.
    ///
    /// - Parameters:
    ///   - transactionId: A unique identifier for the transaction.
    ///   - date: The date of the transaction.
    ///   - time: The time of the transaction.
    ///   - deliveryOption: The selected delivery option.
    ///   - paymentMethod: The payment method used.
    ///   - totalAmount: The total amount for the transaction.
    init(transactionId: String, date: String, time: String, deliveryOption: String, paymentMethod: String, totalAmount: String) {
        self.transactionId = transactionId
        self.date = date
        self.time = time
        self.deliveryOption = deliveryOption
        self.paymentMethod = paymentMethod
        self.totalAmount = totalAmount
    }
}
