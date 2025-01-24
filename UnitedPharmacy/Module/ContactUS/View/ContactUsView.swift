import SwiftUI

struct ContactUsView: View {
    // The view model that manages the state and logic for the Contact Us screen.
    @StateObject var viewModel: ContactUsViewModel
  
    // The main body of the view.
    var body: some View {
        VStack{
            // Header section with a customizable title, back button, and other optional UI elements.
            CustomHeader(greetingText: Header.contactUs, onBackTapped: {}, showRightButtons: false, showBackButton: true, cartBadgeCount: 01, isShowingFiler: false)
            // A reusable top tab view for switching between "Get in Touch" and "Contact Information".
            TopTabView(
                selectedTab:  $viewModel.selectedTab,
                tabs: [Contactus.getInTouch, Contactus.contactInformation],
                activeColor: Color(UIColor.appclr3F9ACC),
                inactiveColor: Color(UIColor.appclr92949F),
                fontName: FontConstant.Almarai_Bold,
                fontSize: 14
            )
            // Main content area displaying different views based on the selected tab.
            ScrollView{
                if viewModel.selectedTab == 0 {
                    // View for the "Get in Touch" tab.
                    GetInTouchView()
                } else {
                    // View for the "Contact Information" tab.
                    ContactInformationView()
                }
            }
            
        }
    }
}
// MARK: - Preview

#Preview {
    let contactUsModel = ContactUsModel()
    let viewModel = ContactUsViewModel(contactUs: contactUsModel)
    
    return ContactUsView(viewModel: viewModel)
}
