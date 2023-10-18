//
//  uberCloneApp.swift
//  uberClone
//
//  Created by hsnl on 2023/1/28.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    // Triggers when finish launching
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

    return true
  }
}

@main
struct uberCloneApp: App {
    //@StateObject var locationViewModel = LocationSearchViewModel()
    @StateObject var authViewModel = AuthViewModel()
    @StateObject var homeViewModel = HomeViewModel()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                //.environmentObject(locationViewModel)
                .environmentObject(authViewModel)
                .environmentObject(homeViewModel)
        }
    }
}
