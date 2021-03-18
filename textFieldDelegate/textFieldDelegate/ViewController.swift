//
//  ViewController.swift
//  textFieldDelegate
//
//  Created by ArunSha on 18/03/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField:
        UITextField!
    
    
    @IBAction func login(_ sender: UIButton) {
        // manually resign the keyword for specific UITextField
        userNameTextField.resignFirstResponder()
       // self.touchesBegan(T##touches: Set<UITouch>##Set<UITouch>, with: <#T##UIEvent?#>)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userNameTextField.delegate =  self
        passwordTextField.delegate =  self
        
        userNameTextField.clearButtonMode = .always
    }
    
    func resignResponder(textField: UITextField) {
        textField.resignFirstResponder()
    }
    
    //delegate is an object which will call an method when event triggers
    
    // Return - when return key got pressed
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Return Called in ")
        resignResponder(textField: textField)
        return false
    } // called when 'return' key pressed. return NO to ignore.
    
    
    // textField:shouldChangeInCharactersIN -> call when change or add char in text
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{

        print("shouldChangeInCharactersIN")
        
       // return false // dit not change editing
        return true // changes in the text
        
    } // return NO to not change text
    
    
    
   // textFieldShouldBeginEditing -> call when first touch on your text field
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        print("textFieldShouldBeginEditing")
        
        // return false  // It won’t allow editing so No Keyboard Opens.  So won’t call following delegates (textField:shouldChangeInCharactersIN )
        return true // allows keyboard and editing

    } // return NO to disallow editing.
    
    
    //textFieldDidBeginEditing -> will call after textFieldShouldBegin method
                                // and it wont call when textFieldShouldBegin return false
     func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDID")
    } // became first responder
    
    // clear

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("Clear")
        return false
    }// called when clear button pressed. return NO to ignore (no notifications)


    // textFieldShouldEndEditing which is smilar to begin editing but different is it will call next textfiled got pressed or return keyword

     func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true // allows editing  for next textfiled
       // return false // won't allow editing for next textfild
    } // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end



  
    func textFieldDidEndEditing(_ textField: UITextField){
        print("textFieldDidEndEditing sss")
    } // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    
    // it same like changeCharacterIn extra feature is when slecting text also it triggering
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("textFiled did Change Selection")
    }

    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("endEditi Got called")
//        view.endEditing(true)
//    }
//

    // will call touches inside the view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touched")
        view.endEditing(true)
    }




}

