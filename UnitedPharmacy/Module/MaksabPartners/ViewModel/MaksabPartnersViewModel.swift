//
//  MaksabPartnersViewModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import Foundation
import UIKit
import SwiftUI

class MaksabPartnersViewModel: ObservableObject {
    private let onBackTap: () -> Void
    // MARK: - Published Properties
    
   
    @Published var maksabPartners: MaksabPartnersModel
    
    /// List of carousel items to be displayed in a banner.
    @Published var carouselItems: [CarouselItem] = [
        CarouselItem(imageName: maksubImages.img_banner2.rawValue),
        CarouselItem(imageName: maksubImages.img_banner2.rawValue),
        CarouselItem(imageName: maksubImages.img_banner2.rawValue),
        CarouselItem(imageName: maksubImages.img_banner2.rawValue),
        CarouselItem(imageName: maksubImages.img_banner2.rawValue)
    ]
    
    @Published var parterImages: [PartnerImage] = [
        PartnerImage(imageName: Icons.Logo_Aspirin.rawValue),
        PartnerImage(imageName: Icons.Logo_Aspirin.rawValue),
        PartnerImage(imageName: Icons.Logo_Aspirin.rawValue),
        PartnerImage(imageName: Icons.Logo_Aspirin.rawValue),
        PartnerImage(imageName: Icons.Logo_Aspirin.rawValue),
        PartnerImage(imageName: Icons.Logo_Aspirin.rawValue),
        PartnerImage(imageName: Icons.Logo_Aspirin.rawValue),
        
    ]
    
    
    // MARK: - Initializer
    init(maksabPartners: MaksabPartnersModel, onBackTap: @escaping () -> Void ) {
        self.maksabPartners = maksabPartners
        self.onBackTap = onBackTap
       
    }
    // MARK: - Back Button Tapped
    func onBackTapped () {
        onBackTap()
    }
  
}
