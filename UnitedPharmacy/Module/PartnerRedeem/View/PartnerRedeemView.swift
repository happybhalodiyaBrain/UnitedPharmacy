//
//  PartnerRedeem.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import SwiftUI

struct PartnerRedeemView: View {
    @ObservedObject var viewModel: PartnerRedeemViewModel
    
    var body: some View {
        VStack{
            // MARK: - Custom Header
            CustomHeader(
                greetingText: Header.partnerRedeem,
                onBackTapped: {},
                showRightButtons: false,
                showBackButton: true,
                cartBadgeCount: 5,
                isShowingFiler: false,
                isShowWishListbtn: false
            )
            VStack{
                Text("Maksab Total Points")
                    .textStyle(size: 12, color: Color(UIColor.appclr757575),
                               fontName: FontConstant.Almarai_Regular,
                               lineSpacing: 14)
                Text("1256")
                    .textStyle(size: 18, color: Color(UIColor.appclr000000),
                               fontName: FontConstant.Almarai_Bold,
                               lineSpacing: 22)
            }
            .frame(maxWidth: .infinity)
            .padding(8) // Inner padding inside the VStack
            .background(Color.white) // White background
            .cornerRadius(8) // Rounded corners
            .shadow(color: Color.black.opacity(0.1), radius: 6, x: 0, y: 4) // Subtle shadow
            .padding(.horizontal, 16)
            .padding(.vertical,9)
            
            VStack{
                Image(Icons.dummy.rawValue)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 156)
                    .cornerRadius(8)
                    .clipped()
            }.padding(.top, 10)
                .padding(.horizontal, 16)
            
            
            Text("Redeem")
                .textStyle(size: 14, color: Color(UIColor.appclr000000),
                           fontName: FontConstant.Almarai_Bold,
                           lineSpacing: 17)
                .padding(.top, 14)
            
            HStack(spacing:13){
                CommonButton(title: "Total Points", action: {},
                             backgroundColor: Color(UIColor.appclr4A9C1F),
                             horizontalPadding: 0, verticalPadding: 0 )
                CommonButton(title: "Partial Points", action: {},
                             backgroundColor:.clear,
                             textColor: Color(UIColor.appclr0A195C),
                             horizontalPadding: 0,verticalPadding: 0, borderColor: Color(UIColor.appclr0A195C),
                             borderWidth: 1
                )
            }.padding(.horizontal, 16)
                .padding(.top, 8)
            
            
            HStack {
                TextField(InputFields.txtRedeemAmount, text: $viewModel.redeemAmount)
                    .textStyle(size: 16, color: Color(UIColor.appclrB6B7B7),
                               fontName: FontConstant.Almarai_Regular)
                
                Button(action: {
                    // Apply discount logic
                }) {
                    Text(Buttons.btn_apply)
                        .textStyle(size: 14, color: Color(UIColor.appclr0A195C),
                                   fontName: FontConstant.Almarai_Bold)
                }
            }.padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color(UIColor.appclrEFF9FF))
                .cornerRadius(8)
                .padding(.horizontal, 16)
                .padding(.top, 16)
            
            
            
            List(viewModel.rewards) { reward in
                HStack {
                    // Left Section: Title and Points
                    VStack(alignment: .leading, spacing: 4) {
                        Text(reward.title)
                            .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                       fontName: FontConstant.Almarai_Bold)
                        Text(reward.points)
                            .textStyle(size: 12, color: Color(UIColor.appclr757575),
                                       fontName: FontConstant.Almarai_Regular)
                    }
                    Spacer()
                    
                    // Right Section: Redeem Button
                    Button(action: {
                        // Handle redeem action
                        print("Redeem tapped for \(reward.title)")
                    }) {
                        Text("Redeem")
                            .textStyle(size: 10, color: Color(UIColor.appclrFFFFFF),
                                       fontName: FontConstant.Almarai_Bold)
                            .padding(.horizontal, 18)
                            .padding(.vertical, 3)
                            .background(Color(UIColor.appclr0A195C))
                            .cornerRadius(4)
                    }
                }
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color(UIColor.appclrF1F1F1))
                        .background(Color.white.cornerRadius(4))
                )
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle()) // Remove default list styling
            .padding(.top, 10)
        }
            
            Spacer()
        
    }
}

#Preview {
    let partnerRedeemModel = PartnerRedeemModel()
    let viewModel = PartnerRedeemViewModel(partnerRedeem: partnerRedeemModel)
    
    return PartnerRedeemView(viewModel: viewModel)
}
