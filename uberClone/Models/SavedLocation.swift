//
//  SavedLocation.swift
//  uberClone
//
//  Created by hsnl on 2023/2/5.
//

import Firebase

struct SavedLocation: Codable {
    let title: String
    let address: String
    let coordinates: GeoPoint
}
