//
//  ViewController.swift
//  ObjectDelegate
//
//  Created by ArunSha on 14/03/21.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    let udTextField = UITextField()
    

    @IBOutlet weak var textFieldOne: UITextField!
    
    override func viewDidLoad() {
        udTextField.frame = CGRect(x: 30, y: 30, width: 100, height: 100)
        udTextField.text = "ud Delegate"
        self.view.addSubview(udTextField)
        //textFieldOne. = true
        udTextField.delegate = self
        super.viewDidLoad()

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("delegage method got called")
        udTextField.resignFirstResponder()
        return true
    } // called when 'return' key pressed. return NO to ignore.
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        print("TextFiled Should Clear Called !!!")
        textFieldOne.resignFirstResponder()
        return true
        
    } // called when clear button pressed. return NO to ignore (no notifications)
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Text Field Called")
        return true
    }
    
     func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing Cakk")
        return true
    }// return NO to disallow editing.


    
    // called when 'return' key pressed. return NO to ignore
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        print("textFieldShouldReturn")
//        textField.resignFirstResponder()
//        return true
//    }
}

