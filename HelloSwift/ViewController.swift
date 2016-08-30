//
//  ViewController.swift
//  HelloSwift
//
//  Created by Chris Warrick on 2016-08-30.
//  Copyright © 2016 Chris Warrick. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet var textField: NSTextField!
    @IBOutlet var label: NSTextField!
    
    @IBAction func textFieldHitEnter(sender: NSTextField) {
        updateLabelWithFormat(sender.stringValue, emoji: "⌨️")
    }
    
    @IBAction func greetPressed(sender: NSButton) {
        updateLabelWithFormat(textField.stringValue, emoji: "🖱")
    }

    func updateLabelWithFormat(text: String, emoji: String) -> Bool {
        if textField.stringValue.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet()).isEmpty {
            label.stringValue = "Hello! " + emoji;
            return false
        } else {
            label.stringValue = String.init(format: "Hello, %@! %@", textField.stringValue, emoji);
            return true
        }
    }

    func showHelp(sencer: AnyObject?) {
        let alert: NSAlert = NSAlert()
        alert.messageText = "Just type in a name and hit Return/Greet."
        alert.informativeText = "That’s all there is to know."
        alert.alertStyle = NSAlertStyle.InformationalAlertStyle
        alert.addButtonWithTitle("OK")
        alert.runModal()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.stringValue = "Hello!";

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

