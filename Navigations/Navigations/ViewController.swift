//
//  ViewController.swift
//  Navigations
//
//  Created by ArunSha on 21/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func click(_ sender: Any) {
        self.performSegue(withIdentifier: "connecitonSegue", sender: self)
    }
}

