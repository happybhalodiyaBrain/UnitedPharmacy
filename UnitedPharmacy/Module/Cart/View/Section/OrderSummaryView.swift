//
//  OrderSummaryView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import SwiftUI

// MARK: - Order Summary Section
struct OrderSummaryView: View {
    
    // MARK: - Properties
    
    /// The view model that contains the data to populate the order summary.
    @ObservedObject var viewModel: CartViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Title for the Order Summary
            
            Text(cart.orderSummary)
                .textStyle(size: 14, color: Color(UIColor.appclr000000),
                           fontName: FontConstant.Almarai_Bold)
            
            VStack(spacing:4) {
                // Subtotal row
                HStack {
                    Text(cart.Subtotal)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Regular)
                    Spacer()
                    Text(viewModel.subTotal)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Bold)
                }
                // Shipping Charges row
                HStack {
                    Text(cart.shippingCharges)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Regular)
                    Spacer()
                    Text(viewModel.shippingCharges)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Bold)
                }
                // Discount row
                
                HStack {
                    Text(cart.discount)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Regular)
                    Spacer()
                    Text(viewModel.discount)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.Almarai_Bold)
                }
                // Divider for separation between the discount and total
                
                Divider()
                    .padding(.vertical, 4)
                // Total row
                
                HStack {
                    Text(cart.total)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.OpenSans_SemiBold)
                    Spacer()
                    Text(viewModel.total)
                        .textStyle(size: 14, color: Color(UIColor.appclr000000),
                                   fontName: FontConstant.OpenSans_Bold)
                }
            }
            
        }.padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Color.white)
        
        
    }
}

