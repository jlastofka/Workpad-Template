//
//  ViewController.swift
//  WorkPadTemplate
//
//  Created by Jeff Lastofka on 25 Nov 2020.
//

import Cocoa

var outString = ""
var sum = 0

class ViewController: NSViewController
{
    @IBOutlet weak var mainWindow: NSTextField!
    @IBOutlet weak var promptWindow: NSTextField!
    @IBOutlet weak var inputWindow: NSTextField!
    @IBAction func inputEnded(_ sender: Any)
    {
        let x = Int(inputWindow.stringValue)
        sum = 0
        for i in (1...x!)
        {
            sum += i
        }
        outString.append(String(sum) + "\n")
        mainWindow.stringValue = outString
    }
    @IBAction func goButton(_ sender: Any)
    {
        let x = Int(inputWindow.stringValue)
        sum = 0
        for i in (1...x!)
        {
            sum += i
        }
        outString.append(String(sum) + "\n")
        mainWindow.stringValue = outString
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        promptWindow.stringValue = "Sum 1 to ?"
    }

    override var representedObject: Any?
    {
        didSet
        {
        // Update the view, if already loaded.
        }
    }


}

