//
//  UberLocation.swift
//  uberClone
//
//  Created by hsnl on 2023/2/3.
//

import Foundation
import MapKit

struct UberLocation: Identifiable {
    let id = NSUUID().uuidString
    let title: String
    let coordinate: CLLocationCoordinate2D
}
