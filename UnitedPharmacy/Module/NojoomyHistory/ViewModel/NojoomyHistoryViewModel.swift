//
//  NojoomyHistoryViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 29/01/25.
//

import Foundation
import UIKit
import SwiftUI

final class NojoomyHistoryViewModel {
    private let onTapViewAll: () -> Void
    private let onTapRedeemPoints : () -> Void
    // MARK: - Published Properties
    
    /// Nojoomy history model instance
    @Published var nojoomyHistory: NojoomyHistoryModel
    /// List of transactions for display
    @Published var transactions: [Transaction] = []
    /// Total points available for the user
    @Published var totalPoints: String = "1256"
    /// Total credit for the user in SAR
    @Published var totalCredit:  String = "1256 SAR"
    /// List of partner information for the Nojoomy program
    @Published var partners: [Partner] = [
        Partner(name: "ALFAPARF", logoName: Icons.dummy.rawValue),
        Partner(name: "ARS", logoName:  Icons.dummy.rawValue),
        Partner(name: "Aloe", logoName:  Icons.dummy.rawValue)
    ]
    // MARK: - Initializer
    init(nojoomyHistory: NojoomyHistoryModel, onTapViewAll: @escaping () -> Void, onTapRedeemPoints : @escaping () -> Void) {
        self.nojoomyHistory = nojoomyHistory
        self.onTapViewAll = onTapViewAll
        self.onTapRedeemPoints = onTapRedeemPoints
        fetchTransactions()
    }
    // MARK: - Data Fetching
    /// Simulates fetching transactions from an API or database
    private func fetchTransactions() {
        // Simulating API data fetch
        transactions = [
            Transaction(date: "10/6/23", change: 5.00, orderTotal: 1545.31, pointsBalance: 111.00, description: "Spending every SARX amount bonus"),
            Transaction(date: "10/6/23", change: -10.00, orderTotal: 1545.31, pointsBalance: 101.00, description: "Spending every amount bonus"),
            Transaction(date: "10/6/23", change: 5.00, orderTotal: 1545.31, pointsBalance: 111.00, description: "Registration Bonus"),
            Transaction(date: "10/6/23", change: 5.00, orderTotal: 1545.31, pointsBalance: 111.00, description: "Registration Bonus"),
            Transaction(date: "10/6/23", change: 5.00, orderTotal: 1545.31, pointsBalance: 111.00, description: "Registration Bonus"), Transaction(date: "10/6/23", change: 5.00, orderTotal: 1545.31, pointsBalance: 111.00, description: "Registration Bonus"),
            Transaction(date: "10/6/23", change: 5.00, orderTotal: 1545.31, pointsBalance: 111.00, description: "Registration Bonus"),
            Transaction(date: "10/6/23", change: 5.00, orderTotal: 1545.31, pointsBalance: 111.00, description: "Registration Bonus"),
            Transaction(date: "10/6/23", change: 5.00, orderTotal: 1545.31, pointsBalance: 111.00, description: "Registration Bonus"),
        ]
    }
    // MARK: - User Interaction
    /// Handles the user action for redeeming points
    func onTappedRedeemPoints () {
        onTapRedeemPoints()
    }
    
    /// Handles the view all button
    func onTappedViewAll () {
        onTapViewAll()
    }
    
    /// Handled the back button
    func onBackButtonTapped () {
        
    }
}
