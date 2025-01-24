//
//  AppConstant.swift
//  United Pharmacy
//
//  Created by Happy  Bhalodiya on 23/01/25.
//

import Foundation

// MARK: - Header Constants
/// A struct containing static constants for various header titles used across the app.
struct Header {
    static let contactUs = "Contact Us"
}

struct InputFields {
    static let txtEmailID =  "Email Address*"
    static let txtName = "Name*"
    static let txtMobileNo = "Mobile Number*"
    static let txtNote = "What's on your mind?*"
}

struct Buttons {
    static let btn_submit = "Submit"
}

struct ErrorMessages {
  
    static let errValidationError = "Validation Error"
    static let errName = "Name"
    static let errEmail = "Email Address"
    static let errMobile = "Mobile Number"
    static let errNote = "Note"
    static let errCannotBeEmpty = "cannot be empty."
    static let errInvalidEmail  = "Invalid email address."
    static let errInvalidZipCode = "Invalid ZIP Code. It must be 5 digits."
    static let errInvalidMobileNo =  "Invalid mobile number. It must be 10 digits."
}

struct Contactus {
    static let getInTouch = "Get in Touch"
    static let contactInformation = "Contact Information"
    static let note = "If you have any question,Please don't hesitate to send us a message"
    static let workinghours = "Working Hours: Sat-Tue 9:00am - 4:00pm"
    static let location = "Haael street, Rewais district, Jeddah,Saudi Arabia"
    static let email = "customercare@unitedpharmacy.sa"
    static let phoneNo = "+966 8002444445"
   
}
