//
//  FortuneWheelViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 31/01/25.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - Partner Redeem ViewModel
class FortuneWheelViewModel: ObservableObject {
    
    @Published var fortuneWheel: FortuneWheelModel
    init(fortuneWheel: FortuneWheelModel) {
        self.fortuneWheel = fortuneWheel
    }
}
