//
//  AppDelegate.swift
//  ios-webView
//
//  Created by Lautaro Echeverria on 05/07/2023.
//

import UIKit
import mParticle_Apple_SDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let options = MParticleOptions(key: "us1-5d73266d77e69649a15f693976a4a9c8",
                                             secret: "CWxZQe9jykG0sb9uHvEWIYPbEOEOfQ0GBxMZ7WloxCv9WZXEM9FG5-xuXh8t3Xpw")
        
        options.logLevel = MPILogLevel.verbose
        
        options.environment = MPEnvironment.development;

        MParticle.sharedInstance().start(with: options)
        
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

