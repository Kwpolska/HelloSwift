//
//  ViewController.swift
//  HelloSwift
//
//  Created by Chris Warrick on 2016-08-30.
//  Copyright © 2016-2017, Chris Warrick. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet var textField: NSTextField!
    @IBOutlet var label: NSTextField!
    
    @IBAction func textFieldHitEnter(_ sender: NSTextField) {
        updateLabelWithFormat(sender.stringValue, emoji: "⌨️")
    }
    
    @IBAction func greetPressed(_ sender: NSButton) {
        updateLabelWithFormat(textField.stringValue, emoji: "🖱")
    }

    func updateLabelWithFormat(_ text: String, emoji: String) {
        if text.trimmingCharacters(in: CharacterSet.whitespaces).isEmpty {
            label.stringValue = "Hello! " + emoji;
        } else {
            label.stringValue = String.init(format: "Hello, %@! %@", text, emoji);
        }
    }

    func showHelp(_ sender: AnyObject?) {
        let alert: NSAlert = NSAlert()
        alert.messageText = "Just type in a name and hit Return/Greet."
        alert.informativeText = "That’s all there is to know."
        alert.alertStyle = NSAlertStyle.informational
        alert.addButton(withTitle: "OK")
        alert.runModal()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.stringValue = "Hello!";

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

