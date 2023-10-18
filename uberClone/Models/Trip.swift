//
//  Trip.swift
//  uberClone
//
//  Created by hsnl on 2023/2/6.
//

import Firebase
import FirebaseFirestoreSwift

enum TripState: Int, Codable {
    case requested
    case rejected
    case accepted
    case passengerCancelled
    case driverCancelled
}

struct Trip: Identifiable, Codable {
    @DocumentID var tripId: String?
    // uid
    let passengerUid: String
    let driverUid: String
    //name
    let passengerName: String
    let driverName: String
    // user location
    let passengerLocation: GeoPoint
    let driverLocation: GeoPoint
    
    let pickupLocationName: String
    let dropoffLocationName: String
    
    let pickupLocationAddress: String
    
    let pickupLocation: GeoPoint
    let dropoffLocation: GeoPoint
    
    let tripCost: Double
    var distanceToPassenger: Double
    var travelTimeToPassenger: Int
    
    var state: TripState
    
    var id: String {
        return tripId ?? ""
    }
}
