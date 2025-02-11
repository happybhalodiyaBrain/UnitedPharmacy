//
//  FortuneWheel2ViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 03/02/25.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - Partner Redeem ViewModel
class FortuneWheel2ViewModel: ObservableObject {
    /// The model representing the Fortune Wheel 2.
    @Published var fortuneWheel2: FortuneWheel2Model
    /// Track the rotation angle
    @Published var rotation: Double = 0.0

    /// Initializes a new instance of `FortuneWheel2ViewModel` with the provided model.
    ///
    /// - Parameter fortuneWheel2: The model representing the Fortune Wheel 2.
    init(fortuneWheel2: FortuneWheel2Model) {
        self.fortuneWheel2 = fortuneWheel2
    }
    /// Initiates the spinning action for the Fortune Wheel 2.
    
    func onTapSpin () {
        withAnimation {
            let randomSpin = Double.random(in: 5...10) * 360
            let randomOffset = Double.random(in: 0..<360)
            let totalRotation = randomSpin + randomOffset
            rotation += totalRotation
        }
    }
    /// Handles the cancel action for the Fortune Wheel 2.
    func onTapCancel () {
        
    }
}
