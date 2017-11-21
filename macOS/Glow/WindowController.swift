//
//  WindowController.swift
//  Glow
//
//  Created by Justin Bush on 2017-11-20.
//  Copyright © 2018 Justin Bush. All rights reserved.
//

import Cocoa
import Fabric
import Crashlytics

class WindowController: NSWindowController, NSWindowDelegate {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        // Window Configuration
        window!.titlebarAppearsTransparent = true
        window!.isMovableByWindowBackground  = true
        window!.title = ""
        window!.delegate = self
        
        // Open Window in FullScreen
        if let screen = window?.screen ?? NSScreen.main {
            window?.setFrame(screen.visibleFrame, display: true)
        }
    }
    
    // Window Action: FullScreen
    func windowWillEnterFullScreen(_ notification: Notification) {
        if let controller = contentViewController as? ViewController {
            controller.updateForFullScreenMode()
        }
        Answers.logContentView(withName: "FullScreen Mode",
                               contentType: "Function",
                               contentId: "function-3",
                               customAttributes: [:])
    }
    
    // Window Action: Window
    func windowWillExitFullScreen(_ notification: Notification) {
        if let controller = contentViewController as? ViewController {
            controller.updateForWindowMode()
        }
        Answers.logContentView(withName: "Window Mode",
                               contentType: "Function",
                               contentId: "function-4",
                               customAttributes: [:])
    }
    
}


