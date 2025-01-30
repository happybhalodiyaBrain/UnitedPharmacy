//
//  SectionHeaderView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import SwiftUI
/// A reusable view representing a section header with an optional action button.
struct SectionHeaderView: View {
    /// The title text for the section header.
    let title: String
    /// Optional text for an action button that can be displayed next to the title.
    let actionText: String?
    /// Optional handler for the action button tap event.
    let actionHandler: (() -> Void)?
    
    var body: some View {
        HStack {
            // Title displayed on the left side of the section header.
            Text(title)
                .textStyle(size: 14, color: Color(UIColor.appclr000000),
                           fontName: FontConstant.Almarai_Bold)
            Spacer()
            // If `actionText` is provided, display the action button.
            if let actionText = actionText {
                Button(action: {
                    // Execute the actionHandler when the button is tapped.
                    actionHandler?()
                }) {
                    // Button content with underlined text.
                    Text(actionText)
                        .textStyle(size: 12, color: Color(UIColor.appclr011F79),
                                   fontName: FontConstant.Almarai_Bold)
                        .underline()
                }
            }
        }.padding(.horizontal, 16) // Apply horizontal padding to the header content.
        
        
    }
}
