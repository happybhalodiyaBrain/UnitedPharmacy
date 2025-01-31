//
//  NojoomyHistoryView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 29/01/25.
//

import SwiftUI

struct NojoomyHistoryView: View {
    let viewModel: NojoomyHistoryViewModel
    var body: some View {
        VStack{
            // MARK: - Header Section
            HStack{
                Image(Icons.ic_whiteBackButton.rawValue)
                    .scaledToFit()
                    .padding(.leading, 10)
                    .padding(.bottom, 22)
                    .onTapGesture {
                            viewModel.onBackButtonTapped()
                        }
                
                Text(Header.nojoomyHistory)
                    .textStyle(size: 14, color: Color(UIColor.appclrFFFFFF),
                               fontName: FontConstant.Almarai_Bold)
                    .padding(.leading, 8)
                    .padding(.bottom, 22)
                
                Spacer()
                ZStack{
                    Circle()
                        .fill(Color(UIColor.appclrFEE126))
                        .frame(width: 75, height: 75)
                    
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 55, height: 52)
                        .foregroundColor(Color(UIColor.appclrFFFFFF))
                }.padding(.trailing, 7)
            }.frame(width: .infinity, height: 128)
                .background(Color(UIColor.appclr4A9C1F))
            // MARK: - Points Section
            VStack(spacing: 0) {
                HStack {
                    VStack(spacing: 2) {
                        Text(nojoomyHistory.totalPoints)
                            .textStyle(size: 12, color: Color(UIColor.appclr757575),
                                       fontName: FontConstant.Almarai_Regular)
                        Text(viewModel.totalPoints)
                            .textStyle(size: 18, color: Color(UIColor.appclr000000),
                                       fontName: FontConstant.Almarai_Bold)
                    }
                    .frame(maxWidth: .infinity)
                    
                    Divider()
                        .frame(height: 54)
                        .background(Color.gray.opacity(0.5))
                    
                    VStack(spacing: 2) {
                        Text(nojoomyHistory.totalCredit)
                            .textStyle(size: 12, color: Color(UIColor.appclr757575),
                                       fontName: FontConstant.Almarai_Regular)
                        Text(viewModel.totalCredit)
                            .textStyle(size: 18, color: Color(UIColor.appclr000000),
                                       fontName: FontConstant.Almarai_Bold)
                    }
                    .frame(maxWidth: .infinity)
                }.frame(height: 63)
                    .background(Color(UIColor.appclrEFF9FF)) // Light blue background
                
                Button(action: {
                    viewModel.onTappedRedeemPoints()
                }) {
                    HStack {
                        Text(nojoomyHistory.redeemPoints)
                            .textStyle(size: 14, color: Color(UIColor.appclr052D76),
                                       fontName: FontConstant.Almarai_Bold)
                        
                        Image(Icons.ic_blueForward.rawValue)
                            .frame(width: 12, height: 12)
                        
                        
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                }
            }
            .frame(height: 108)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 2)
            .padding(.horizontal, 16)
            .padding(.top, -50)
        }
        // MARK: - Maksab History Section

        SectionHeaderView(
            title: nojoomyHistory.ourMaksabPartners,
            actionText:  nojoomyHistory.viewAll,
            actionHandler:  {
                viewModel.onTappedViewAll()
            }
        ).padding(.top, 22)
            .padding(.bottom,6)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(viewModel.partners) { partner in
                    ZStack {
                        Image(partner.logoName)
                            .resizable()
                            .scaledToFit() // Keep aspect ratio
                            .frame(width: 110, height: 50) // Size of the image
                    }
                    .frame(width: 129, height: 60) // Outer frame
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(UIColor.appclrF1F1F1), lineWidth: 1) // Border
                    )
                }
            }
            .padding(.horizontal, 16)
        }
        
        SectionHeaderView(
            title: nojoomyHistory.maksabHistory,
            actionText: nil,
            actionHandler: nil
        ).padding(.top, 16)
            .padding(.bottom, 4)
        TransactionsView(transactionList: viewModel.transactions)
        Spacer()
        
    }
}

