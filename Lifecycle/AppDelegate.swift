//
//  AppDelegate.swift
//  Lifecycle
//
//  Created by Ilya Krupko on 12/09/2019.
//  Copyright © 2019 Ilya Krupko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Logger.shared.log("⭐️ - didFinishLaunchingWithOptions")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        Logger.shared.log("⭐️ - applicationWillEnterForeground")
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        Logger.shared.log("⭐️ - applicationDidBecomeActive")
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

extension UIWindow {
    var name: String {
        return "🔲"
    }

    open override func layoutSubviews() {
        Logger.shared.log("\(name) - layoutSubviews")
        super.layoutSubviews()
    }

    open override func updateConstraints() {
        Logger.shared.log("\(name) - updateConstraints")
        super.updateConstraints()
    }

    open override func draw(_ rect: CGRect) {
        Logger.shared.log("\(name) - draw")
        super.draw(rect)
    }

    open override func display(_ layer: CALayer) {
        Logger.shared.log("\(name) - display")
    }

    open override func layoutSublayers(of layer: CALayer) {
        Logger.shared.log("\(name)🌅 - layoutSublayers")
        super.layoutSublayers(of: layer)
    }
}
