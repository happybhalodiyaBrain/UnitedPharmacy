//
//  FortuneWheelCoordinator.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 31/01/25.
//

import Foundation
import SwiftUI


final class FortuneWheelCoordinator {
    // MARK: - Properties
    
    /// The navigation controller used for pushing the cart view controller onto the navigation stack.
    private weak var navigationController: UINavigationController?
    
    // MARK: - Initializer
    
    /// Initializes the `CartCoordinator` with a navigation controller.
    ///
    /// - Parameter navigationController: The navigation controller that will be used to navigate between views.
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    
    // MARK: - Methods
    
    /// Creates and returns the CartView as a `UIViewController`.
    ///
    /// This method initializes the CartView with a `CartViewModel`, embeds it in a `UIHostingController`,
    /// and returns the view controller to be used in the navigation stack.
    ///
    /// - Returns: A `UIViewController` containing the `CartView`.
    func makeView() -> UIViewController {
        let viewModel = FortuneWheelViewModel(fortuneWheel: FortuneWheelModel())
        let view = FortuneWheelView(viewModel: viewModel)
        let partnerRedeemVC = UIHostingController(rootView: view)
        return partnerRedeemVC
        
    }
   
}
