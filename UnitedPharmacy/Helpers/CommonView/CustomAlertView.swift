//
//  CustomAlertView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 03/02/25.
//

import SwiftUI
enum AlertView {
    case won
    case lost
    case betterLuck
}
struct CustomAlertView: View {
    var emoji: String
    var title: String
    var message: String
    var subtitle: String
    var buttonText: String 
    var alertView: AlertView = .won
    var buttonAction: () -> Void
  
    
    var body: some View {
        GeometryReader { geometry in
            
            if alertView == .won {
                
                    VStack{
                        Image(spin.img_confetti.rawValue)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width, height: 360)
                        
                        Image(spin.img_emoji.rawValue)
                            .resizable()
                            .frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                            .padding(.top, -340)
                        
                        Text("\(subtitle) OFF")
                            .textStyle(size: 35, color: Color(UIColor.appclr4CA309),
                                       fontName: FontConstant.Almarai_Bold)
                        
                        CommonButton(title: buttonText, action: buttonAction)
                            .padding(.top, 20)
                            .padding(.bottom, 20)
                    }
                
            }else{
                VStack {
                    Image(spin.img_emoji.rawValue)
                        .resizable()
                        .frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                        .padding(.top, 20)
                    
                    Text(title)
                        .textStyle(size: 24, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Regular)
                        .padding(.top, 8)
                    
                    Text(message)
                        .textStyle(size:40, color: Color(UIColor.appclrF43410),
                                   fontName: FontConstant.Almarai_Bold)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top, 27)
                    
                    if !subtitle.isEmpty {
                        Text(subtitle)
                            .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                       fontName: FontConstant.Almarai_Regular)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.top, 31)
                    }
                    
                    CommonButton(title: buttonText, action: buttonAction)
                        .padding(.top, 42)
                }
                .padding()
                .overlay {
                    GeometryReader { geometry in
                        Color.clear.preference(key: InnerHeightPreferenceKey.self, value: geometry.size.height)
                    }
                }
            }
        }
    }
}

#Preview {
    CustomAlertView(
        emoji: "😊",
        title: "SORRY!",
        message: "BETTER LUCK\nNEXT TIME!",
        subtitle: "The next time\nyou must be lucky",
        buttonText: "Ok"
    ) {
        // Action when button is clicked
    }
}
