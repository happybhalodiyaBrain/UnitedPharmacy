//
//  ContactUsViewModel.swift
//  United Pharmacy
//
//  Created by Happy  Bhalodiya on 24/01/25.
//

import Foundation

class ContactUsViewModel: ObservableObject {
    // MARK: - Published Properties
    
    /// The main model for the Contact Us data.
    @Published var contactUs: ContactUsModel
    /// The currently selected tab in the UI (0 = "Get in Touch", 1 = "Contact Information").
    @Published var selectedTab: Int = 0
    /// Holds the user details data that is bound to the view.
    @Published var formData = ContactUsModel()
    /// An array of error messages for invalid fields.
    @Published var errorMessages: [String] = []
    /// A single message to be shown in case of an error.
    @Published var alertMessage: String = ""
    /// A flag to indicate whether to show an alert in case of error.
    @Published var showAlert: Bool = false
    
    init(contactUs: ContactUsModel) {
        self.contactUs = contactUs
    }
    
    /// Validates the fields in the form.
    ///
    /// This method checks if each field in the form is valid using the `ValidationManager`
    /// and updates the `alertMessage` and `showAlert` properties accordingly.
    ///
    /// - Returns: `true` if all fields are valid, `false` otherwise.
    func validateFields() -> Bool {
        alertMessage = ""
        
        // Validate the 'name' field
        if let error = ValidationManager.isNotEmpty(formData.name, fieldName: ErrorMessages.errName) {
            alertMessage = error
            showAlert = true
        }
        
        // Validate the 'emailID' field (non-empty and valid email format)
        else if let error = ValidationManager.isNotEmpty(formData.emailID, fieldName: ErrorMessages.errEmail) {
            alertMessage = error
            showAlert = true
        } else if let error = ValidationManager.isValidEmail(formData.emailID) {
            alertMessage = error
            showAlert = true
        }
        
        // Validate the 'mobileNo' field (non-empty and valid format)
        else if let error = ValidationManager.isNotEmpty(formData.mobileNo, fieldName: ErrorMessages.errMobile) {
            alertMessage = error
            showAlert = true
        } else if let error = ValidationManager.isValidMobileNumber(formData.mobileNo) {
            alertMessage = error
            showAlert = true
        }
        
        
        // Validate the 'requestDetails' field
        else if let error = ValidationManager.isNotEmpty(formData.note, fieldName: ErrorMessages.errNote) {
            alertMessage = error
            showAlert = true
        }
        
        return alertMessage.isEmpty // If no errors, validation is successful
    }
    
    /// Submits the form if all fields are valid.
    ///
    /// If the validation passes, this method prints a success message with the form data.
    /// Otherwise, it prints the validation error messages.
    func submitForm() {
        if validateFields() {
            // Proceed with submission logic
            print("Form submitted successfully with: \(formData)")
        } else {
            // Print errors (or show them in the UI)
            print("Validation failed with errors: \(errorMessages)")
        }
    }
}
