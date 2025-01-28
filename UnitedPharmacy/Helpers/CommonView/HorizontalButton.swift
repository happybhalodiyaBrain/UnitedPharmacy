//
//  HorizontalButton.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import SwiftUI

struct HorizontalButton: View {
    var title: String
    var icon: String
    var action: () -> Void
    var backgroundColor: Color = Color(UIColor.appclrFFFFFF)
    var textColor: Color = Color(UIColor.appclr000000) // Default black color
    var cornerRadius: CGFloat = 6
    
       var body: some View {
           Button(action: {
               action()
           }) {
               VStack(spacing: 8) {
                   // Icon
                   Image(icon)
                       .resizable()
                       .frame(width: 33, height: 33)
                   
                   // Title
                   Text(title)
                       .textStyle(size: 14,
                                  color: textColor,
                                  fontName: FontConstant.Almarai_Bold)
               }
               .padding()
               .frame(maxWidth: .infinity, minHeight: 86)
               .background(backgroundColor)
               .cornerRadius(cornerRadius)
           }
       }
}

