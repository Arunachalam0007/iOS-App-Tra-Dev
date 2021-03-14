//
//  ViewController.swift
//  ButtonTap
//
//  Created by ArunSha on 14/03/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func btn1Touch(_ sender: UIButton) {
        self.view.backgroundColor = .yellow;
    }
    @IBAction func btn2Touch(_ sender: UIButton) {
        self.view.backgroundColor = .red;
    }
    @IBAction func btn3Touch(_ sender: UIButton) {
        self.view.backgroundColor = .gray;
    }
    @IBAction func btn4Touch(_ sender: UIButton) {

        switch sender.tag {
        case 0:
            self.view.backgroundColor = .yellow;
        case 1:
            self.view.backgroundColor = .red;
        case 2:
            self.view.backgroundColor = .gray;
        case 3:
            self.view.backgroundColor = UIColor.green;
        case 4:
            self.view.backgroundColor = UIColor.purple;
            
        default:
            self.view.backgroundColor = .black
        }
    }
    
    let label = UILabel()
    let udButton = UIButton()
    let udTextField = UITextField()
    let udImageView = UIImageView()
    
 
    
    override func viewDidLoad() {
        // Label
//        label.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//        label.backgroundColor = .orange
//        label.text = "Welcome"
//        label.textAlignment = .center
//        self.view.addSubview(label)
        
        //Btn
        
        udButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        udButton.backgroundColor = .black
        //Btn Action
        udButton.addTarget(self, action: #selector(click), for: .touchUpInside)
        udButton.setTitle("User Btn", for: .normal)
        self.view.addSubview(udButton)
//

        // TextField
//        udTextField.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//        udTextField.backgroundColor = .green
//        udTextField.text = "User TextField"
//        udTextField.textColor = .systemPink
//        self.view.addSubview(udTextField)
//
        
        // Image
        udImageView.frame = CGRect(x: 30, y: 30, width: 100, height: 100)
        udImageView.image = UIImage(named: "Google")
        self.view.addSubview(udImageView)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func click() {
        print("Button clicked!")
    }


}

