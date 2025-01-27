//
//  File.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 24/01/25.
//

import UIKit

enum AppNavigationControllerProvider {
    static func makeNavigationController() -> UINavigationController {
        let navigationController = UINavigationController()
        navigationController.navigationBar.prefersLargeTitles = false
        navigationController.navigationBar.isHidden = true
        return navigationController
    }
}
