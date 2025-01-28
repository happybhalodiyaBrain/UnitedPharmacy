//
//  MyAccountView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import SwiftUI

struct MyAccountView: View {
    @StateObject var viewModel = MyAccountViewModel()

    var body: some View {
        VStack {
            // Custom Header
            CustomHeader(
                greetingText: Header.myAccount,
                onBackTapped: {},
                showRightButtons: true,
                showBackButton: false,
                cartBadgeCount: 5,
                isShowingFiler: false,
                isShowWishListbtn: false
            )
            
            VStack(spacing: 16) {
                // Welcome Text Section
                VStack(alignment: .leading, spacing: 4) {
                    Text(myAccountView.hello)
                        .textStyle(size: 16, color: Color(UIColor.appclr000000), fontName: FontConstant.Almarai_Bold)
                    
                    Text(myAccountView.welcometoUnitedpharmacy)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000), fontName: FontConstant.Almarai_Regular)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)
                .cornerRadius(8)
                .padding(.top, 12)
                
                // Sign In & Sign Up Buttons
                HStack(spacing: 16) {
                    HorizontalButton(title: myAccountView.signIn, icon: Icons.ic_signIn.rawValue, action: {})
                    HorizontalButton(title: myAccountView.signUp, icon: Icons.ic_signUp.rawValue, action: {})
                }
                
                // Language Selection Row
                AccountOptionRow(option: AccountOption(iconName: Icons.ic_language.rawValue, title: myAccountView.language, trailingText: myAccountView.en))
                
                // Account Options List
                AccountOptionsList(optionsList: viewModel.optionsList)
            }
            .padding(.horizontal, 16)
        }
        .background(Color(UIColor.appclrF1F1F1))
        
    }
}
