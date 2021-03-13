//
//  ViewController.swift
//  AddingNumbersWithTextFieldAction
//
//  Created by ArunSha on 13/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userInputTextField: UITextField!
    
    @IBOutlet weak var userResultTextLabel: UILabel!
    
    @IBAction func textFieldOnEditingChange(_ sender: Any) {
        userResultTextLabel.text = userInputTextField.text
        resultBtn.titleLabel?.text = "4444"
    }
    
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultBtn: UIButton!
    
    @IBAction func addNumbers(_ sender: UIButton) {
        let enteredFirstNumber:Int = Int(firstNumber.text ?? "") ?? 0
        let enteredSecondNumber:Int = Int(secondNumber.text ?? "") ?? 0
        let result = enteredFirstNumber+enteredSecondNumber;
        //print(result)
        //print(firstNumber.text ?? 0)
//        print(resultBtn.titleLabel?.text )

        resultBtn.titleLabel?.text = String(result)
//        print(resultBtn.titleLabel?.text )
//        print(firstNumber.text ?? 0)
        //var result = enter
      //  sender.titleLabel?.text = result ?? ""
        
        resultLabel.text = String(result)
    }
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

