//
//  NojoomyHistoryCoordinator.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 29/01/25.
//

import Foundation
import SwiftUI


final class NojoomyHistoryCoordinator {
    // MARK: - Properties
    
    private weak var navigationController: UINavigationController?
    // MARK: - Initializer
    
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    // MARK: - Methods
    
    func makeView() -> UIViewController {
        let viewModel = NojoomyHistoryViewModel(nojoomyHistory: NojoomyHistoryModel())
        let view = NojoomyHistoryView(viewModel: viewModel)
        let NojoomyHistoryVC = UIHostingController(rootView: view)
        return NojoomyHistoryVC
        
    }
}
