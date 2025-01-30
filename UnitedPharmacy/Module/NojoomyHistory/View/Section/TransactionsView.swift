//
//  TransactionsView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import SwiftUI

struct TransactionsView: View {
    // MARK: - Properties
    let transactionList: [Transaction]
    
    var body: some View {
        List {
            VStack{
                // MARK: - Transaction Header View
                HStack {
                    Text(nojoomyHistory.date)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(nojoomyHistory.change)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(nojoomyHistory.orderTotal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(nojoomyHistory.pointsBalance)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }.textStyle(size: 10, color: Color(UIColor.appclr000000),
                            fontName: FontConstant.Almarai_ExtraBold)
                // MARK: - Transaction List Items View
                
                VStack(spacing: 4){
                    ForEach(transactionList) { transaction in
                        VStack(spacing: 5){
                            HStack {
                                Text(transaction.date)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("\(transaction.change >= 0 ? "+" : "")\(String(format: "%.2f", transaction.change))")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .textStyle(size: 14, color: Color(transaction.change < 0 ? UIColor.appclrF22C55 : UIColor.appclr4A9C1F),
                                               fontName: FontConstant.Almarai_Bold)
                                Text("\(String(format: "%.2f", transaction.orderTotal)) SAR")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("\(String(format: "%.2f", transaction.pointsBalance))")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 8)
                            }.textStyle(size: 14, color: Color(UIColor.appclr000000),
                                        fontName: FontConstant.Almarai_Bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text(transaction.description)
                                .textStyle(size: 12, color: Color(UIColor.appclr757575),
                                           fontName: FontConstant.Almarai_Regular)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }
                    }.padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(Color(UIColor.appclrF1F1F1)))
                    
                    
                }.padding(.top, 11)
                
            }
            .listRowInsets(EdgeInsets(top: 6, leading: 16, bottom: 4, trailing: 16))
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets())
        }
        .listStyle(PlainListStyle())
    }
    
    
}

