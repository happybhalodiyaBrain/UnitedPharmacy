//
//  ThankYouView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 27/01/25.
//

import SwiftUI

struct ThankYouView: View {
    // MARK: - Properties
    
    /// The view model that holds the data for the Thank You screen.
    @StateObject var viewModel: ThankYouViewModel
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                
                ZStack {
                    // Card View
                    VStack {
                        Spacer().frame(height: 50)
                        // Main Content
                        VStack(spacing: 5) {
                            Text(thankYouView.thankYou)
                                .textStyle(size: 20,
                                           color: Color(UIColor.appclr000000),
                                           fontName: FontConstant.Almarai_Bold)
                            
                            Text(thankYouView.transactionSuccessful)
                                .textStyle(size: 14,
                                           color: Color(UIColor.appclr000000),
                                           fontName: FontConstant.Almarai_Regular)
                            
                            Text(viewModel.thankYou.transactionId)
                                .textStyle(size: 14,
                                           color: Color(UIColor.appclr000000),
                                           fontName: FontConstant.Almarai_Bold)
                        }.padding(.top, geometry.size.height * 0.05)
                        // Separator Line
                        Line()
                            .stroke(Color(UIColor.appclrB6B7B7), style: StrokeStyle(lineWidth: 1, dash: [3]))
                            .frame(height: 1)
                            .padding(.horizontal, 24)
                            .padding(.top, geometry.size.height * 0.02)
                            .padding(.bottom,geometry.size.height * 0.03)
                        // Transaction Details
                        VStack(alignment: .leading) {
                            HStack{
                                VStack(alignment: .leading){
                                    Text(thankYouView.date)
                                        .textStyle(size: 12,
                                                   color: Color(UIColor.appclr707070),
                                                   fontName: FontConstant.Almarai_Regular)
                                    Text(viewModel.thankYou.date)
                                        .textStyle(size: 14,
                                                   color: Color(UIColor.appclr000000),
                                                   fontName: FontConstant.Almarai_Bold)
                                }
                                Spacer()
                                VStack(alignment: .leading){
                                    Text(thankYouView.time)
                                        .textStyle(size: 12,
                                                   color: Color(UIColor.appclr707070),
                                                   fontName: FontConstant.Almarai_Regular)
                                    Text(viewModel.thankYou.time)
                                        .textStyle(size: 14,
                                                   color: Color(UIColor.appclr000000),
                                                   fontName: FontConstant.Almarai_Bold)
                                }
                            }
                            
                            VStack(alignment: .leading){
                                Text(thankYouView.deliveryOption)
                                    .textStyle(size: 12,
                                               color: Color(UIColor.appclr707070),
                                               fontName: FontConstant.Almarai_Regular)
                                Text(viewModel.thankYou.deliveryOption)
                                    .textStyle(size: 14,
                                               color: Color(UIColor.appclr000000),
                                               fontName: FontConstant.Almarai_Bold)
                            }.padding(.top, 24)
                            
                            VStack(alignment: .leading){
                                Text(thankYouView.paymentMethod)
                                    .textStyle(size: 12,
                                               color: Color(UIColor.appclr707070),
                                               fontName: FontConstant.Almarai_Regular)
                                Text(viewModel.thankYou.paymentMethod)
                                    .textStyle(size: 14,
                                               color: Color(UIColor.appclr000000),
                                               fontName: FontConstant.Almarai_Bold)
                            }.padding(.top, 24)
                            
                        }.frame(width: .infinity, alignment: .leading)
                            .padding(.horizontal, 23)
                        
                        // Separator Line
                        Line()
                            .stroke(Color(UIColor.appclrB6B7B7), style: StrokeStyle(lineWidth: 1, dash: [3]))
                            .frame(height: 1)
                            .padding(.horizontal, 24)
                            .padding(.top, geometry.size.height * 0.03)
                            .padding(.bottom, geometry.size.height * 0.01)
                        
                        // Total Amount
                        VStack(spacing: 5) {
                            Text(thankYouView.totalAmount)
                                .textStyle(size: 16,
                                           color: Color(UIColor.appclr000000),
                                           fontName: FontConstant.Almarai_Regular)
                            
                            Text(viewModel.thankYou.totalAmount)
                                .textStyle(size: 28,
                                           color: Color(UIColor.appclr4CAADA),
                                           fontName: FontConstant.Almarai_Regular)
                        }
                        
                        // Continue Shopping Button
                        CommonButton(title: thankYouView.continueShopping,
                                     action: {},
                                     horizontalPadding: 38)
                        .padding(.top, geometry.size.height * 0.02)
                        .padding(.bottom, geometry.size.height * 0.08)
                        
                    }
                    .frame(height: min(geometry.size.height * 0.75, 492))
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
                    
                    
                    ZStack {
                        Circle()
                            .fill(Color(UIColor.appclr38AB15)) // Inner green circle
                            .frame(width: 76, height: 76)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 5) // White border
                            )
                            .overlay(
                                Image(Icons.ic_check.rawValue)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 39, height: 28) // Checkmark size
                                    .padding(.top, 4)
                                    .foregroundColor(.white) // Checkmark color
                            )
                    }
                    .offset(y: -250)
                }
                
                
            }
            .padding(.horizontal, 23)
            .padding(.bottom, 18)
            .background(.clrDDDDDD)
            .edgesIgnoringSafeArea(.all)
        }
    }
    
}

//MARK: - divider design 
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

#Preview {
    let thankYouModel = ThankYouModel(
        transactionId: "#343232323",
        date: "06 Sep, 2023",
        time: "11:30 AM",
        deliveryOption: "Pickup From Store",
        paymentMethod: "STC Pay",
        totalAmount: "71.29 SAR"
    )
    let viewModel = ThankYouViewModel(thankYou: thankYouModel)
    
    // Pass the ViewModel to the ThankYouView
    return ThankYouView(viewModel: viewModel)
    
    
}
