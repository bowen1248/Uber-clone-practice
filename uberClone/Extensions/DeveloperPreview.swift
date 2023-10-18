//
//  DeveloperPreview.swift
//  uberClone
//
//  Created by hsnl on 2023/2/5.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let mockTrip = Trip(passengerUid: NSUUID().uuidString,
                        driverUid: NSUUID().uuidString,
                        passengerName: "Bowen",
                        driverName: "John Doe",
                        passengerLocation: .init(latitude: 25.035, longitude: 121.7),
                        driverLocation: .init(latitude: 25.045, longitude: 121.79),
                        pickupLocationName: "Apple Campus",
                        dropoffLocationName: "Starbucks",
                        pickupLocationAddress: "123 Main Street",
                        pickupLocation: .init(latitude: 25.0334, longitude: 122),
                        dropoffLocation: .init(latitude: 25.055, longitude: 121.87),
                        tripCost: 50.0,
                        distanceToPassenger: 1000,
                        travelTimeToPassenger: 24,
                        state: .rejected
    )
    
    let mockUser = User(fullname: "Bowen",
                        email: "test@gmail.com",
                        uid: NSUUID().uuidString,
                        coordinates: GeoPoint(latitude: 25.0330, longitude: 121.5654),
                        accountType: .passenger,
                        homeLocation: nil,
                        workLocation: nil)
}
