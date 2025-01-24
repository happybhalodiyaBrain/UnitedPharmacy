//
//  ContactUsModel.swift
//  United Pharmacy
//
//  Created by Happy  Bhalodiya on 23/01/25.
//

import Foundation

/// A model representing the user's contact information and message for the "Contact Us" form.
struct ContactUsModel {
    // MARK: - Properties
    /// The user's name.
    var name: String = ""
    /// The user's email ID.
    var emailID: String = ""
    /// The user's mobile number.
    var mobileNo: String = ""
    /// A note or message provided by the user.
    var note: String = ""

}
