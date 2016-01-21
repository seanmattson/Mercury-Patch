//
//  ViewController.swift
//  Mercury Patch Pressure Sensor
//
//  Created by Sean Mattson on 1/19/16.
//  Copyright © 2016 Sean Mattson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    @IBOutlet weak var patientNameLabel: UILabel!
    @IBOutlet weak var patientTextField: UITextField!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        patientTextField.delegate = self
    }
    
    
    // MARK: UITextFieldDelegates
    
    //What happens when you press the return key
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        //Hides the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    //What happens when is no longer first responder
    func textFieldDidEndEditing(textField: UITextField) {
        
        // Makes the label the same as the text field
        patientNameLabel.text = textField.text
    }

    
    // MARK: Actions
    @IBAction func buttonStartStream(sender: UIButton) {
        // This will go to another screen with a chart of the stream data
        
        print("Trump 2016")
        
    }
    
    @IBAction func buttonStopStream(sender: UIButton) {
        // This button is probably redundant/ but is should stop the stream
        
        print("You can't stump the trump")
        
    }


}

