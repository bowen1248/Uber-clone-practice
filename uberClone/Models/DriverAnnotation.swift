//
//  DriverAnnotation.swift
//  uberClone
//
//  Created by hsnl on 2023/2/5.
//

import MapKit
import Firebase

class DriverAnnotation: NSObject, MKAnnotation {
    let uid: String
    var coordinate: CLLocationCoordinate2D
    
    init(driver: User) {
        self.uid = driver.uid
        self.coordinate = CLLocationCoordinate2D(latitude: driver.coordinates.latitude,
                                                 longitude: driver.coordinates.longitude)
    }
}
