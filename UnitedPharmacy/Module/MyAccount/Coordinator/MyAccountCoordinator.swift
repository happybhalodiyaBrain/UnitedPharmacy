//
//  MyAccountCoordinator.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import Foundation
import SwiftUI

/// Coordinator responsible for managing navigation and presentation of the My Account module.

final class MyAccountCoordinator {
    // MARK: - Properties
    
    /// Navigation controller to manage navigation within the My Account flow.
    private weak var navigationController: UINavigationController?
    
    // MARK: - Initializer
    
    /// Initializes the coordinator with a navigation controller.
    /// - Parameter navigationController: The `UINavigationController` used for navigation.
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    // MARK: - Methods
    
    /// Creates and returns the `UIViewController` for the My Account screen.
    /// - Returns: A `UIViewController` instance representing the My Account screen.
    func makeView() -> UIViewController {
        let viewModel = MyAccountViewModel(myAccount: MyAccountModel())
        let view = MyAccountView(viewModel: viewModel)
        let myAccountVC = UIHostingController(rootView: view)
        return myAccountVC
    }
    
}
