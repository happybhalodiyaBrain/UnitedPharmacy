import Foundation
import UIKit
import SwiftUI

class PartnerRedeem2ViewModel: ObservableObject {
    
    // MARK: - Published Properties
    
    /// The model holding the Partner Redeem 2 data (membership number and points)
    @Published var partnerRedeem2: PartnerRedeem2Model
    /// User's redeem amount input
    @State var redeemAmount: String = ""
    /// The total number of points available for the user
    @State var maksabTotalPoints: String = "1256"
    /// The form data for Partner Redeem 2 section
    @Published var formData = PartnerRedeem2Model()
    
    /// List of rewards that can be redeemed by the user
    
    @Published var rewards: [Reward] = [
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
        Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT")
    ]
    // MARK: - Initializer
    
    /// Initializes the ViewModel with the provided PartnerRedeem2Model
    /// - Parameter partnerRedeem2: An instance of the PartnerRedeem2Model to initialize with
    init(partnerRedeem2: PartnerRedeem2Model) {
        self.partnerRedeem2 = partnerRedeem2
    }
    
    // MARK: - Methods
    
    /// Function to handle the action when the back button is tapped
    func onBackButtonTapped () {
        
    }
    /// Function to handle the action when the redeem button is tapped
    func onRedeemTapped () {
        
    }
}
