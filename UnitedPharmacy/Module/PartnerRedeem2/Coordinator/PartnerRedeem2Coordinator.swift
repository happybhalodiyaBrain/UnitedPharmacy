import Foundation
import SwiftUI


final class PartnerRedeem2Coordinator {
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
        let viewModel = PartnerRedeem2ViewModel(partnerRedeem2: PartnerRedeem2Model())
        let view = PartnerRedeem2View(viewModel: viewModel)
        let partnerRedeem2VC = UIHostingController(rootView: view)
        return partnerRedeem2VC
        
    }
    
}
