//
//  MenuController.swift
//  Glow
//
//  Created by Justin Bush on 2017-11-21.
//  Copyright © 2017 Justin Bush. All rights reserved.
//

import Cocoa

class MenuController: NSMenu {
    
    // Menu Actions
    @IBAction func showSideMenu(_: Any?) {
        NotificationCenter.default.post(name: Notification.Name("ToggleSideMenu"), object: nil)
    }

}
