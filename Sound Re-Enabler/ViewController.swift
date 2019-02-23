//
//  ViewController.swift
//  Sound Re-Enabler
//
//  Created by Nikola on 2/22/19.
//  Copyright © 2019 Stojković. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSWindowDelegate {
    @IBOutlet weak var btnFix: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NSAlert.showAlert(title: "Information", message: "Authentication is required in order to fix the sound bug.\n\nIt is required because of utilizing the killall command, which requires the sudo.", style: .informational)
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    

    
    @IBAction func btnFix(_ sender: Any?) {
        if fix() {
            NSAlert.showAlert(title: "🎵 Let the music play...", message: "We did it! 🥳\n\nExiting now 🥰", style: .informational)
            NSApp.terminate(self)
        } else {
            NSAlert.showAlert(title: "We didn't make it. 😢", message: "😭 I have failed you.", style: .critical)
            
        }
    }
    
    func fix() -> Bool {
        let taskTwo = Process()
        taskTwo.launchPath = "/usr/bin/sudo"
        taskTwo.arguments = ["-S", "/usr/bin/killall", "coreaudiod"]
        
        taskTwo.launch()
        taskTwo.waitUntilExit()
        
        if taskTwo.terminationStatus == 0 {
            return true
        } else {
            return false
        }
    }

}

extension NSAlert {
    static func showAlert(title: String?, message: String?, style: NSAlert.Style = .informational) {
        let alert = NSAlert()
        if let title = title {
            alert.messageText = title
        }
        if let message = message {
            alert.informativeText = message
        }
        alert.alertStyle = style
        alert.runModal()
    }
}
