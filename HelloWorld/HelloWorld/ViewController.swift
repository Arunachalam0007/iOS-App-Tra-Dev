//
//  ViewController.swift
//  HelloWorld
//
//  Created by ArunSha on 13/03/21.
//

import UIKit

// UIKIT - User interface kit
// UILabel
// UIButton
// UIImageView
// UITextField

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var firstButtton: UIButton!
    
   
    @IBOutlet weak var textField: UITextField!
    //Interface builder - storyboard
    //weak - from memory management
   //  ! -- Forced unwrapping, ? optional
    // IBAction - Interface builder action
    @IBOutlet weak var firstimage: UIImageView!
    
    @IBAction func click(_ sender: Any) {
//        let currentText:String = firstLabel.text ?? ""
        let textFieldValue = firstTextField.text
        firstLabel.text = textFieldValue
        firstimage.image = UIImage(named: "Google")

    }
    override func viewDidLoad() {
        firstLabel.text = "Welcome"
        print("viewDidLoad1")
        super.viewDidLoad()
        print("viewDidLoad2")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func textFieldValueChanged(_ sender: Any) {
        print("Text Filed Changed Value ",textField.text ?? "")
        firstLabel.text = textField.text ?? ""
    }
    
}

//ViewController 
//mvc
//mvvm
//viper
//singleton
