//
//  ThankYouViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 27/01/25.
//

import Foundation
import UIKit

/// ViewModel for the Thank You screen, responsible for holding and managing the data for the view.
class ThankYouViewModel: ObservableObject {
    
    // MARK: - Published Properties
    
    /// The `ThankYouModel` containing all the transaction-related data.
    @Published var thankYou: ThankYouModel
    
    // MARK: - Initializer
    
    /// Initializes a new `ThankYouViewModel` with the provided `ThankYouModel`.
    ///
    /// - Parameter thankYou: The `ThankYouModel` containing the transaction data to be displayed.
    init(thankYou: ThankYouModel) {
        self.thankYou = thankYou
    }
    
    
    
    
}
