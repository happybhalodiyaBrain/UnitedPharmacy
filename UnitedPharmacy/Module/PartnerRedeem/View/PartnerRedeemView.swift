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
        VStack {
            // MARK: - Custom Header
            CustomHeader(
                greetingText: Header.partnerRedeem,
                onBackTapped: viewModel.onBackButtonTapped,
                showRightButtons: false,
                showBackButton: true,
                cartBadgeCount: 5,
                isShowingFiler: false,
                isShowWishListbtn: false
            )
            
            ScrollView {
                VStack {
                    // Maksab Total Points
                    VStack {
                        Text(partnerRedeem.maksabTotalPoints)
                            .textStyle(size: 12, color: Color(UIColor.appclr757575),
                                       fontName: FontConstant.Almarai_Regular,
                                       lineSpacing: 14)
                        Text(viewModel.maksabTotalPoints)
                            .textStyle(size: 18, color: Color(UIColor.appclr000000),
                                       fontName: FontConstant.Almarai_Bold,
                                       lineSpacing: 22)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.1), radius: 6, x: 0, y: 4)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 9)

                    // MARK: - Image Section
                    VStack {
                        Image(Icons.dummy.rawValue)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: 156)
                            .cornerRadius(8)
                            .clipped()
                    }
                    .padding(.top, 10)
                    .padding(.horizontal, 16)

                    // MARK: - Redeem Button
                    Text(Buttons.btnRedeem)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Bold,
                                   lineSpacing: 17)
                        .padding(.top, 14)

                    // MARK: - Point Selection Buttons
                        HStack(spacing: 13) {
                            CommonButton(title: Buttons.btnTotalPoints, action: viewModel.onTotalPointsTapped,
                                         backgroundColor: Color(UIColor.appclr4A9C1F),
                                         horizontalPadding: 0, verticalPadding: 5, height: 44)
                            CommonButton(title: Buttons.btnPartialPoints,
                                         action: viewModel.onPartialPointTapped,
                                         backgroundColor: .clear,
                                         textColor: Color(UIColor.appclr0A195C),
                                         horizontalPadding: 0,
                                         verticalPadding: 5,
                                         borderColor: Color(UIColor.appclr0A195C),
                                         borderWidth: 1,
                                         height: 44
                            )
                        }
                    
                    .padding(.horizontal, 16)
                    .padding(.top, 8)

                    // MARK: - Redeem Amount Input Field
                    HStack {
                        TextField(InputFields.txtRedeemAmount, text: $viewModel.redeemAmount)
                            .textStyle(size: 16, color: Color(UIColor.appclrB6B7B7),
                                       fontName: FontConstant.Almarai_Regular)
                        
                        Button(action: {
                            viewModel.onApplyTapped()
                        }) {
                            Text(Buttons.btn_apply)
                                .textStyle(size: 14, color: Color(UIColor.appclr0A195C),
                                           fontName: FontConstant.Almarai_Bold)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color(UIColor.appclrEFF9FF))
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    // MARK: - Rewards List
                    VStack(spacing: 8){
                        ForEach(viewModel.rewards) { reward in
                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(reward.title)
                                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                                   fontName: FontConstant.Almarai_Bold)
                                    Text(reward.points)
                                        .textStyle(size: 12, color: Color(UIColor.appclr757575),
                                                   fontName: FontConstant.Almarai_Regular)
                                }
                                Spacer()
                                
                                // Redeem Button
                                Button(action: viewModel.onRedeemTapped) {
                                    Text(Buttons.btnRedeem)
                                        .textStyle(size: 10, color: Color(UIColor.appclrFFFFFF),
                                                   fontName: FontConstant.Almarai_Bold)
                                        .padding(.horizontal, 18)
                                        .padding(.vertical, 5)
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
                            
                        }
                    }.padding(.top, 24)
                    Spacer()
                }
                .padding(.bottom, 20) // Extra padding for scrolling
            }
        }
    }
}
