//
//  WindowController.swift
//  Glow
//
//  Created by Justin Bush on 2017-11-20.
//  Copyright © 2017 Justin Bush. All rights reserved.
//

import Cocoa

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
    }
    
    // Window Action: Window
    func windowWillExitFullScreen(_ notification: Notification) {
        if let controller = contentViewController as? ViewController {
            controller.updateForWindowMode()
        }
    }
    
}


