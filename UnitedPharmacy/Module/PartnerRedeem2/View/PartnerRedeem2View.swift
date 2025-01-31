import SwiftUI

struct PartnerRedeem2View: View {
    @ObservedObject var viewModel: PartnerRedeem2ViewModel
    
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
                    // MARK: - Maksab Total Points Section
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
                    
                    
                    // MARK: - Redeem Maksab Points Title
                    Text(partnerRedeem.redeemMaksabPoints)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Bold,
                                   lineSpacing: 17)
                        .padding(.top, 14)
                    
                    // MARK: - Input Fields Section
                    VStack(spacing: 16) {
                        FloatingTextField(
                            placeHolder: InputFields.txtAlFursanMembershipNumber,
                            text: $viewModel.formData.membershipNumber,
                            isMultiline: false
                        )
                        FloatingTextField(
                            placeHolder: InputFields.txtAddMaksabPoints,
                            text: $viewModel.formData.maksubPoint,
                            isMultiline: false
                        )
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    
                    // MARK: - Redeem Button Section
                    VStack{
                        CommonButton(title: Buttons.btnRedeem, action:  viewModel.onRedeemTapped
                                     ,  horizontalPadding: 83, verticalPadding: 5, height: 44)
                        
                    } .padding(.top, 24)
                    
                    // MARK: - List of Rewards
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
                                Button(action: {
                                    viewModel.onRedeemTapped()
                                }) {
                                    Text(Buttons.btnRedeem)
                                        .textStyle(size: 10, color: Color(UIColor.appclrFFFFFF),
                                                   fontName: FontConstant.Almarai_Bold)
                                        .padding(.horizontal, 18)
                                        .padding(.vertical, 4)
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
                    }.padding(.top, 48)
                }
                .padding(.bottom, 20) // Extra padding to ensure scrolling works properly
            }
        }
    }
}

