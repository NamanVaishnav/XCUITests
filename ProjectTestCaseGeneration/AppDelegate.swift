//
//  AppDelegate.swift
//  ProjectTestCaseGeneration
//
//  Created by Naman Vaishnav on 24/04/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    /// True only when the app is launched through UI Testing
    static var uiTestingEnable: Bool {
        return ProcessInfo.processInfo.arguments.contains("UI_TESTING")
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // Setup UI testing
        self.setupUITesting()
        return true
    }
    
    private func setupUITesting() {
        if AppDelegate.uiTestingEnable {

            UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
            let defaults = UserDefaults.standard
            let dictionary = defaults.dictionaryRepresentation()
            dictionary.keys.forEach { key in
                defaults.removeObject(forKey: key)
            }
        }
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

