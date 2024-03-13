//
//  SwiftfulFirebaseApp.swift
//  SwiftfulFirebase
//
//  Created by Dilpreet Singh on 13/03/24.
//

import SwiftUI
import Firebase

@main
struct SwiftfulFirebaseApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      print("Configured Firebase")
    return true
  }
}
