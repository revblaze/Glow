//
//  AppDelegate.swift
//  Glow
//
//  Created by Justin Bush on 2017-11-20.
//  Copyright © 2018 Justin Bush. All rights reserved.
//

import Cocoa
import Fabric
import Crashlytics

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var mainWindow: NSWindow!
    var viewController: ViewController!
    var windowController: WindowController!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        mainWindow = NSApplication.shared.windows[0]
        Fabric.with([Crashlytics.self])
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    // Handles Reopening of Main Window
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if !flag{
            mainWindow.makeKeyAndOrderFront(nil)
        }
        
        return true
    }
    
}

