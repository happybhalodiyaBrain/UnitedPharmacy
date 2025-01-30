//
//  MaksabPartnersCoordinator.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import Foundation
import SwiftUI


final class MaksabPartnersCoordinator {
    // MARK: - Properties
    
    private weak var navigationController: UINavigationController?
    // MARK: - Initializer
    
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    // MARK: - Methods
    
    func makeView() -> UIViewController {
        let viewModel = MaksabPartnersViewModel(maksabPartners: MaksabPartnersModel())
        let view = MaksabPartnersView(viewModel: viewModel)
        let MaksabPartnersVC = UIHostingController(rootView: view)
        return MaksabPartnersVC
        
    }
}
