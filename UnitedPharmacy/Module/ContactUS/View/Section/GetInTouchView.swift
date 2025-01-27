import SwiftUI

/// A view that provides a "Get in Touch" form for users to submit their contact details.
struct GetInTouchView: View {
    
    // MARK: - Properties
        /// The view model for managing form data and validation.
    @StateObject private var viewModel = ContactUsViewModel(contactUs: ContactUsModel())
    var body: some View {
        VStack{
            // MARK: - Header Image
            Image(ContactUsImages.img_contactUs.rawValue)
                .frame(width: 269, height: 171)
            
            // MARK: - Note Section
            VStack(alignment: .center){
                Text(Contactus.note)
                    .textStyle(size: 14, color: Color(UIColor.appclr000000),
                               fontName: FontConstant.Almarai_Regular)
                    .multilineTextAlignment(.center)
                    .padding(.top, 24)
            }.padding(.horizontal, 16)
            // MARK: - Form Section
            VStack(spacing: 24){
                FloatingTextField(
                    placeHolder: InputFields.txtName,
                    text: $viewModel.formData.name,
                    isMultiline: false
                )
                
                FloatingTextField(
                    placeHolder: InputFields.txtEmailID,
                    text: $viewModel.formData.emailID,
                    isMultiline: false
                )
                FloatingTextField(
                    placeHolder: InputFields.txtMobileNo,
                    text: $viewModel.formData.mobileNo,
                    isMultiline: false,
                    keyboardType: .numberPad,
                    characterLimit: 10
                )
                FloatingTextField(
                    placeHolder: InputFields.txtNote,
                    text: $viewModel.formData.note,
                    isMultiline: true
                )
                
            }.padding(.top, 16)
                .padding(.horizontal, 16)
            // MARK: - Submit Button
            CommonButton(
                title: Buttons.btn_submit,
                action: {
                    viewModel.submitForm()
                }
            ).padding(.vertical, 24)
            
            Spacer()
        }
        .onTapGesture {
            viewModel.dismissKeyboard()
        }
        // MARK: - Alert for Validation Errors
            .showAlert(
                isPresented: $viewModel.showAlert,
                title: ErrorMessages.errValidationError,
                message: viewModel.alertMessage
            )
    }
}

#Preview {
    GetInTouchView()
}
