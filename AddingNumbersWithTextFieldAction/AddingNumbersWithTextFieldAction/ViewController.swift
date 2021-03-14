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
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func addNumbers(_ sender: UIButton) {
        let enteredFirstNumber:Int = Int(firstNumber.text ?? "") ?? 0
        let enteredSecondNumber:Int = Int(secondNumber.text ?? "") ?? 0
        let result = enteredFirstNumber+enteredSecondNumber
        //print(result)
        //print(firstNumber.text ?? 0)
//        print(resultBtn.titleLabel?.text )

//        resultBtn.titleLabel?.text = String(result) // NEED TO CHECK
        
        resultLabel.text = String(result)
        resultBtn.setTitle("Clicked", for: .normal)
        resultBtn.setTitle("Clicked", for: .highlighted)

        
//        print(resultBtn.titleLabel?.text )
//        print(firstNumber.text ?? 0)
        //var result = enter
      //  sender.titleLabel?.text = result ?? ""
        
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var firstBtn: UIButton!
    
    @IBAction func onTouchFirstButton(_ sender: UIButton) {
//        sender.setImage(UIImage(named: "Google"), for: .normal)
//        print(sender.title(for: .normal))
//        print(sender.titleLabel?.text)
        let btnName:String = sender.titleLabel?.text ?? "";
        getBtnImage(onTouchBtnName:btnName , onTouchBtn: sender)
    }
    
    @IBAction func onTouchSecondButton(_ sender: UIButton) {
        let btnName:String = sender.titleLabel?.text ?? "";
        getBtnImage(onTouchBtnName:btnName , onTouchBtn: sender)
    }
    
    @IBAction func onTouchThirdButton(_ sender: UIButton) {
        let btnName:String = sender.titleLabel?.text ?? "";
        getBtnImage(onTouchBtnName:btnName , onTouchBtn: sender)
    }
    
    @IBAction func onTouchFirthButton(_ sender: UIButton) {
        let btnName:String = sender.titleLabel?.text ?? "";
        getBtnImage(onTouchBtnName:btnName , onTouchBtn: sender)
    }
    
    func getBtnImage(onTouchBtnName:String, onTouchBtn:UIButton)  {
        
        print("YOur TOuch Name",onTouchBtnName)
        
        switch onTouchBtnName {
        case "btn1":
            onTouchBtn.setImage(UIImage(named: "Google"), for: .normal)
        case "btn2":
            onTouchBtn.setImage(UIImage(named: "Google"), for: .normal)
        case "btn3":
            onTouchBtn.setImage(UIImage(named: "Google"), for: .normal)
        case "btn4":
            onTouchBtn.setImage(UIImage(named: "Google"), for: .normal)
        default:
            print("YOur Default Now")
        }
        
    }
}

