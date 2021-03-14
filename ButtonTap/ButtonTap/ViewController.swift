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
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

