//
//  PaymentMethodListView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 28/01/25.
//

import SwiftUI

struct PaymentMethodListView: View {
    
    // MARK: - Properties
    /// The `CartViewModel` that provides the data and logic for the view.
    @ObservedObject var viewModel: CartViewModel
    /// The list of payment methods to display.
    let list: [PaymentMethod]
    
    var body: some View {
        VStack(spacing:8) {
            // Loop through the payment method list and display each one
            ForEach(list) { method in
                PaymentMethodRow(
                    method: method,
                    isSelected: viewModel.selectedMethodID == method.id
                )
                .onTapGesture {
                    viewModel.selectedMethodID = method.id
                }
            }
        }.padding(.vertical, 16)
        
    }
}
/// The `PaymentMethodRow` represents a single row in the list of payment methods.

struct PaymentMethodRow: View {
    // MARK: - Properties
        
        /// The payment method object that this row represents.
    let method: PaymentMethod
    /// A Boolean indicating whether the payment method is selected.
    let isSelected: Bool
    
    let size  = calculateScaledSize(xdWidth: 40, xdHeight: 40)
    
    var body: some View {
        HStack {
            // Radio button for selection
            Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
                .foregroundColor(isSelected ? Color(UIColor.appclr0A195C) : Color(UIColor.appclrB6B7B7))
            
            // Name & Description (conditionally displayed)
            VStack(alignment: .leading) {
                Text(method.name)
                    .textStyle(size: 14, color:
                                isSelected ?Color(UIColor.appclr0A195C) :
                                Color(UIColor.appclr000000),
                               fontName: FontConstant.Almarai_Bold)
                
                if let description = method.description, !description.isEmpty {
                    Text(description)
                        .textStyle(size: 12, color: Color(UIColor.appclr707070),
                                   fontName: FontConstant.Almarai_Regular)
                    
                }
            }.frame(width: .infinity, alignment: .leading)
            .padding(.leading, 8)
            
            Spacer()
            
            // Payment method icons
            if !method.iconName.isEmpty {
                HStack {
                    ForEach(method.iconName, id: \.self) { iconName in
                        Image(iconName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: size.width, height: size.height)
                    }
                }
            }
        }
        .padding(8)
        .frame(width :.infinity,height: 50, alignment: .center)
        .background(isSelected ? Color(UIColor.appclrEFF9FF) : Color(UIColor.appclrFFFFFF))
        .cornerRadius(4)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(isSelected ? Color(UIColor.appclr0A195C) : Color(UIColor.appclrB6B7B7), lineWidth: 1)
        ) // Border
        .padding(.horizontal, 16)
    }
}
