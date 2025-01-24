
import Foundation
import SwiftUI


final class ContactUsCoordinator {
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func makeView() -> UIViewController {
        let viewModel = ContactUsViewModel(contactUs: ContactUsModel())
        let view = ContactUsView(viewModel: viewModel)
        let hostingVC = UIHostingController(rootView: view)
        return hostingVC
    }
    
}
