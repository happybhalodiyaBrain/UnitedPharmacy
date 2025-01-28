//
//  MyAccountViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//


import Foundation

// MARK: - MyAccountViewModel

/// ViewModel for the My Account screen, responsible for managing and providing account-related data.
class MyAccountViewModel: ObservableObject {
    
    /// Published property to notify views when the account model updates.
    @Published var myAccount: MyAccountModel
    
    /// Computed property to access account options from the model.
    var options: [AccountOption] {
        return myAccount.options
    }
    
    // MARK: - Initializer
    
    /// Initializes the ViewModel, optionally with a custom MyAccountModel.
    init(myAccount: MyAccountModel = MyAccountModel()) {
        self.myAccount = myAccount
    }
    
    /// account options list
    @Published var optionsList: [AccountOption] = [
        AccountOption(iconName: Icons.ic_storeLocation.rawValue, title: myAccountView.storeLocation),
        AccountOption(iconName: Icons.ic_orders.rawValue, title: myAccountView.ordersAndReturns),
        AccountOption(iconName: Icons.ic_contactUs.rawValue, title: myAccountView.contactUs),
        AccountOption(iconName: Icons.ic_termsCondition.rawValue, title: myAccountView.termsCondition),
        AccountOption(iconName: Icons.ic_privacyPolicy.rawValue, title: myAccountView.privacyPolicy),
        AccountOption(iconName: Icons.ic_faq.rawValue, title: myAccountView.faq),
        AccountOption(iconName: Icons.ic_aboutUs.rawValue, title: myAccountView.aboutUs)
    ]
}
