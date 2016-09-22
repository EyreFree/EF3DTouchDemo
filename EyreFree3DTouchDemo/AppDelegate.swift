//
//  AppDelegate.swift
//  EyreFree3DTouchDemo
//
//  Created by EyreFreeWork on 16/9/22.
//  Copyright © 2016年 EyreFree. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
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
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {

        var sourceButtonTitle: String?

        //根据按钮标题进行进一步操作
        switch shortcutItem.localizedTitle {
        case "3D Touch 测试按钮":
            sourceButtonTitle = "来源按钮：3D Touch 测试按钮"
            break
        case "出来吧，小火龙！":
            sourceButtonTitle = "来源按钮：出来吧，小火龙！"
            break
        default:
            break
        }

        //测试操作：弹出一个对话框显示来源按钮
        if let trySourceButtonTitle = sourceButtonTitle {
            let alert = UIAlertController(title: nil, message: trySourceButtonTitle, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "知道啦", style: .cancel, handler: nil))
            self.window?.rootViewController?.present(alert, animated: true, completion: nil)
        }
    }
}

