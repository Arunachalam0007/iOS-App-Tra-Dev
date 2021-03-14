//
//  ViewController.swift
//  ObjectDelegate
//
//  Created by ArunSha on 14/03/21.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    let udTextField = UITextField()

    override func viewDidLoad() {
        udTextField.frame = CGRect(x: 30, y: 30, width: 100, height: 100)
        udTextField.text = "ud Delegate"
        self.view.addSubview(udTextField)
        // udTextField.delegate = self
        udTextField.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // called when 'return' key pressed. return NO to ignore
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
}

