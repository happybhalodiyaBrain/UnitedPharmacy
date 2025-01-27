//
//  ThankYouCoordinator.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 27/01/25.
//

import Foundation
import UIKit
import SwiftUI

/// Coordinator responsible for managing the navigation flow and creation of the Thank You view.
final class ThankYouCoordinator {
    
    // MARK: - Properties
    
    /// The navigation controller used to manage the navigation stack.
    private weak var navigationController: UINavigationController?
    
    // MARK: - Initializer
    
    /// Initializes the coordinator with a navigation controller.
    ///
    /// - Parameter navigationController: The navigation controller responsible for handling view transitions.
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    
    // MARK: - Methods
    
    /// Creates and returns the Thank You view controller wrapped in a UIHostingController.
    ///
    /// This method sets up the necessary model and view model for the `ThankYouView` and returns it
    /// as a view controller that can be pushed onto the navigation stack.
    ///
    /// - Returns: A `UIViewController` containing the Thank You view.
    func makeView() -> UIViewController {
        let model = ThankYouModel(
            transactionId: "#343232323",
            date: "06 Sep, 2023",
            time: "11:30 AM",
            deliveryOption: "Pickup From Store",
            paymentMethod: "STC Pay",
            totalAmount: "71.29 SAR"
        )
        let viewModel = ThankYouViewModel(thankYou: model)
        let view = ThankYouView(viewModel: viewModel)
        let thankYouVC = UIHostingController(rootView: view)
        return thankYouVC
    }
    
}
