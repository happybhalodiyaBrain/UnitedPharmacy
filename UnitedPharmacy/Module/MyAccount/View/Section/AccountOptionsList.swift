//
//  AccountOptionsList.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import Foundation
import SwiftUI


// MARK: - AccountOptionsList

/// A SwiftUI view that displays a list of account-related options.
struct AccountOptionsList: View {
    let optionsList: [AccountOption]

    var body: some View {
        List(optionsList, id: \.id) { option in
           
            AccountOptionRow(option: option)
                .listRowInsets(EdgeInsets()) // Removes default insets
                .background(Color.white) // Ensure consistent background color
        }
        .listStyle(PlainListStyle()) // Removes separators and extra padding
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
// MARK: - AccountOptionRow

/// A SwiftUI view that represents a single row in the account options list.
struct AccountOptionRow: View {
    var option: AccountOption
 
    var body: some View {
    
        HStack {
            Image(option.iconName)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(Color(UIColor.appclr000000))
            
            Text(option.title)
                .textStyle(size: 16, color: Color(UIColor.appclr000000), fontName: FontConstant.Almarai_Regular)
                .padding(.leading,16)
            
            Spacer()
            
            Text(option.trailingText ?? "")
                .textStyle(size: 16, color: Color(UIColor.appclr3F9ACC), fontName: FontConstant.Almarai_Regular)
            
            Image(Icons.ic_smallDropDown.rawValue)
                .rotationEffect(.degrees(270))
                .frame(width: 6, height: 6)
                .foregroundColor(Color(UIColor.appclr000000))
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}
