//
//  PartnerRedeemViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - Partner Redeem ViewModel
class PartnerRedeemViewModel: ObservableObject {
    
    // MARK: - Properties
    
    /// Callback function executed when the back button
    private let onBackTap: () -> Void
    
    /// The model containing redeem-related data
    @Published var partnerRedeem: Reward
    /// The amount the user wants to redeem.
    @State var redeemAmount: String = ""
    /// The total Maksab points available for redemption.
    @State var maksabTotalPoints: String = "1256"
    
    /// List of available rewards that the user can redeem.
    @Published var rewards: [Reward] = [
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT")
    ]
    
    // MARK: - Initializer
    
    /// Initializes the `PartnerRedeemViewModel` with required dependencies.
    ///
    /// - Parameters:
    ///   - partnerRedeem: The model containing redeem-related data.
    ///   - onBackTap: Closure to handle the back button action.
    init(partnerRedeem: Reward, onBackTap:  @escaping () -> Void) {
        self.partnerRedeem = partnerRedeem
        self.onBackTap = onBackTap
    }
    
    // MARK: - Actions
    
    /// Handles the back button tap event.
    func onBackButtonTapped () {
        onBackTap()
    }
    
    /// Handles the event when the "Total Points" button is tapped.
    func onTotalPointsTapped () {
        
    }
    /// Handles the event when the "Partial Points" button is tapped.
    func onPartialPointTapped () {
        
    }
    /// Handles the event when the "Apply" button is tapped.
    func onApplyTapped () {
        
    }
    /// Handles the event when the "Redeem" button is tapped.
    func onRedeemTapped () {
        
    }
}
