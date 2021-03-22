//
//  ViewController.swift
//  NavigationDemo1
//
//  Created by ArunSha on 21/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func moveToSecondPage(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToSecond", sender: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

