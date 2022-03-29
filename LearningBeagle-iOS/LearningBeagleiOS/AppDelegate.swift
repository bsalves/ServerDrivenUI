//
//  AppDelegate.swift
//  LearningBeagleiOS
//
//  Created by Bruno Alves on 25/03/22.
//

import UIKit
import Beagle
import BeagleLearningServerDriven
import BeagleLearningNetworkingSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let serverDriven = ServerDriven.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        ServerDriven.shared.baseUrl = URL(string: "http://localhost:8080")
        ServerDriven.shared.setup()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

