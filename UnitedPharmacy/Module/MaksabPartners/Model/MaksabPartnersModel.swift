//
//  MaksabPartnersModel.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 30/01/25.
//

import Foundation
struct MaksabPartnersModel  {
}
/// Represents an item in a carousel.
struct CarouselItem: Identifiable {
    /// Unique identifier for the carousel item.
    let id = UUID()
    /// Name of the image associated with the carousel item.
    let imageName: String
}



struct PartnerImage: Hashable, Identifiable {
    /// Unique identifier for the carousel item.
    let id = UUID()
    /// Name of the image associated with the carousel item.
    let imageName: String
}
