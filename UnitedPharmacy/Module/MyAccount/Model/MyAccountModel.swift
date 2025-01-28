//
//  MyAccountModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import Foundation


// MARK: - MyAccountModel

/// Model representing the My Account section, containing a list of account options.
struct MyAccountModel {
    /// List of available account options in the My Account section.
    var options: [AccountOption] = []
}

// MARK: - AccountOption

/// Represents an individual account option in the My Account section.
struct AccountOption: Hashable, Identifiable {
    let id = UUID() // Add unique ID to make it identifiable
    var iconName: String // Name of the icon
    var title: String // Title of the account option
    var trailingText: String? = nil // Optional trailing text
}
