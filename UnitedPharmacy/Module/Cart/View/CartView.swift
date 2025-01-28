//
//  CartView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import SwiftUI

struct CartView: View {
    
    // MARK: - Properties
    
    /// The view model that holds the data and business logic for the cart.
    @ObservedObject var viewModel: CartViewModel
    
    var body: some View {
        VStack{
            // MARK: - Custom Header
            CustomHeader(
                greetingText: Header.cart,
                onBackTapped: {},
                showRightButtons: true,
                showBackButton: true,
                cartBadgeCount: 5,
                isShowingFiler: false,
                isShowWishListbtn: false
            )
            
            ScrollView{
                // MARK: - Payment Methods Section
                CustomSectionHeader(title: cart.paymentMethod)
                
                // PaymentMethodListView displays all available payment methods in a scrollable list.
                PaymentMethodListView(viewModel: CartViewModel(cart: CartModel()), list: viewModel.patmentMethodList)
                    .frame(maxWidth: .infinity)
                    .background(Color(UIColor.appclrFFFFFF))
                
                // MARK: - Discount Code Section
                CustomSectionHeader(title: cart.addADiscountCode)
                
                VStack(alignment: .leading){
                    HStack {
                        TextField(InputFields.txtEnterDiscountCode, text: $viewModel.discountCode)
                            .textStyle(size: 14, color: Color(UIColor.appclrB6B7B7),
                                       fontName: FontConstant.Almarai_Regular)
                        
                        Button(action: {
                            // Apply discount logic
                        }) {
                            Text(Buttons.btn_apply)
                                .textStyle(size: 12, color: Color(UIColor.appclr3F9ACC),
                                           fontName: FontConstant.Almarai_Bold)
                        }
                    }.padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .background(Color(UIColor.appclrEFF9FF))
                        .cornerRadius(4)
                    
                }.padding(16)
                    .background(Color(UIColor.appclrFFFFFF))
                
                // MARK: - Order Summary Section
                OrderSummaryView(viewModel: viewModel)
                
            }
            // MARK: - Total and Place Order Section
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 4){
                        Text(cart.total)
                            .textStyle(size: 14, color: Color(UIColor.appclr707070),
                                       fontName: FontConstant.OpenSans_SemiBold)
                        
                        Text(viewModel.total)
                            .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                       fontName: FontConstant.Almarai_Bold)
                    }.frame(maxWidth: 130, alignment: .leading)
                    
                    Spacer()
                    CommonButton(title: cart.placeOrder, action: {}, horizontalPadding: 0, verticalPadding: 0)
                }.frame(alignment: .center)
            }.padding(16)
                .background(Color.white)
            
        }.background(Color(UIColor.appclrF2F2F2))
            .edgesIgnoringSafeArea(.bottom)
        
    }
}


//MARK: -  Reusable Header for each section
struct CustomSectionHeader: View {
    var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .textStyle(size: 14, color: Color(UIColor.appclr000000),
                           fontName: FontConstant.Almarai_Bold)
                .padding(.leading, 16)
                .padding(.vertical, 11)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

// Preview section

#Preview {
    let cartModel = CartModel()
    let viewModel = CartViewModel(cart: cartModel)
    
    return CartView(viewModel: viewModel)
}
