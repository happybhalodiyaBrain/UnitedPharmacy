//
//  MaksabPartnersView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import SwiftUI

struct MaksabPartnersView: View {
    @ObservedObject var viewModel: MaksabPartnersViewModel
   
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

    var body: some View {
        VStack{
            // MARK: - Custom Header
            CustomHeader(
                greetingText: Header.ourMaksabPartners,
                onBackTapped: viewModel.onBackTapped,
                showRightButtons: false,
                showBackButton: true,
                cartBadgeCount: 5,
                isShowingFiler: false,
                isShowWishListbtn: false
            )
            
            //MARK: - Carousel view
            CarouselView(items: viewModel.carouselItems)
                .padding(.horizontal, 16)
                .padding(.top, 16)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 11) { // Spacing between rows
                    ForEach(viewModel.parterImages, id: \.self) { image in
                        ZStack {
                            Image(image.imageName)
                                .resizable()
                                .scaledToFit() // Keep aspect ratio
                        }
                        .frame(minWidth: 167, minHeight: 77) // Outer frame with fixed height
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(UIColor.appclrF1F1F1), lineWidth: 1)
                        )
                    }
                }
                .padding(.horizontal, 16) // Horizontal padding for the grid
                .padding(.vertical, 20) // Padding around the entire grid
            }
            
        }
    }
}

