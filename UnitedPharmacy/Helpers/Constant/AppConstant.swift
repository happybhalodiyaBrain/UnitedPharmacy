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
    static let myAccount = "My Account"
    static let cart = "Cart (2 Items)"
}

struct InputFields {
    static let txtEmailID =  "Email Address*"
    static let txtName = "Name*"
    static let txtMobileNo = "Mobile Number*"
    static let txtNote = "What's on your mind?*"
    static let txtEnterDiscountCode = "Enter Discount Code"
}

struct Buttons {
    static let btn_submit = "Submit"
    static let btn_apply = "APPLY"
}

struct ErrorMessages {
  
    static let errValidationError = "Validation Error"
    static let errName = "Name"
    static let errEmail = "Email Address"
    static let errMobile = "Mobile Number"
    static let errNote = "Note"
    static let errCannotBeEmpty = "cannot be empty."
    static let errInvalidEmail  = "Invalid email address."
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

struct thankYouView {
    static let thankYou = "Thank You!"
    static let transactionSuccessful = "Your transaction was successful"
    static let date = "DATE"
    static let time = "TIME"
    static let deliveryOption = "DELIVERY OPTION"
    static let paymentMethod = "PAYMENT METHOD"
    static let totalAmount = "Total Amount"
    static let continueShopping = "Continue Shopping"
}

struct myAccountView {
    static let hello = "Hello!"
    static let welcometoUnitedpharmacy = "Welcome to Unitedpharmacy"
    static let signIn = "Sign In"
    static let signUp = "Sign Up"
    static let language = "Language"
    static let en = "En"
    static let storeLocation = "Store Location"
    static let ordersAndReturns = "Orders and Returns"
    static let contactUs = "Contact Us"
    static let termsCondition = "Terms & Condition"
    static let privacyPolicy = "Privacy Policy"
    static let faq = "FAQ"
    static let aboutUs = "About Us"
   
}

struct cart {
    static let paymentMethod = "Payment Method"
    static let addADiscountCode = "Add a Discount Code"
    static let total = "Total"
    static let placeOrder = "Place Order"
    static let orderSummary = "Order Summary"
    static let Subtotal = "Subtotal"
    static let shippingCharges = "Shipping Charges"
    static let discount = "Discount"
}
