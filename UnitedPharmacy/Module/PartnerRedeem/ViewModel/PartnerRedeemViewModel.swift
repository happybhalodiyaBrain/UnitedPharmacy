//
//  PartnerRedeemViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import Foundation
import UIKit
import SwiftUI

class PartnerRedeemViewModel: ObservableObject {
    
    
    @Published var partnerRedeem: PartnerRedeemModel
    @State var redeemAmount: String = ""

    @Published var rewards: [Reward] = [
           Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
           Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT"),
           Reward(id: UUID(), title: "1000 AlFursan Miles", points: "3000 PT")
       ]
    
    init(partnerRedeem: PartnerRedeemModel) {
        self.partnerRedeem = partnerRedeem
    }
}
