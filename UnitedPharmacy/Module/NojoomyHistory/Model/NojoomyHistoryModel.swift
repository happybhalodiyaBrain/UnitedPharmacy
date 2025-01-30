//
//  NojoomyHistoryModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 29/01/25.
//

import Foundation

/// This model represents the history of Nojoomy transactions and partners.

struct NojoomyHistoryModel  {
    /// An array of partners associated with Nojoomy.
      /// Each partner has a name and an image asset for their logo.
  let partner : [Partner] = []
}

/// Represents a partner in the Nojoomy history model.
/// Partners have an id, a name, and a logo asset name.
struct Partner: Identifiable {
    /// Unique identifier for each partner.
    let id = UUID()
    /// The name of the partner.
    let name: String
    /// The name of the image asset representing the partner's logo.
    let logoName: String
}

/// Represents a transaction in the Nojoomy history model.
/// Transactions have an id, date, change, order total, points balance, and description.
struct Transaction: Identifiable {
    /// Unique identifier for each transaction.
    let id = UUID()
    /// The date when the transaction occurred, formatted as a string.
    let date: String
    /// The change in points for this transaction (could be positive or negative).
    let change: Double
    /// The total amount of the order during this transaction.
    let orderTotal: Double
    /// The balance of points after the transaction.
    let pointsBalance: Double
    /// A description or additional information about the transaction.
    let description: String
}
