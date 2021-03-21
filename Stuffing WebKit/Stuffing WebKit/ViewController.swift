//
//  ViewController.swift
//  Stuffing WebKit
//
//  Created by ArunSha on 20/03/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var urlImage: UIImageView!
    
    var imageURL = "http://miro.medium.com/max/1518/1*YQNS4UzYLRO0CumGdIfU9g.jpeg"
    
    var stuffingURL = "http://www.greenstechnologys.com/apple-ios-training-in-chennai.html"
    
    @IBOutlet weak var stuffingWebView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Image view
        let internetImageURL = URL(string: imageURL)
        let data = try? Data(contentsOf: internetImageURL!)
        
        if let imgData = data {
            urlImage.image = UIImage(data: imgData)
        }
        
        // webView
        
        let stuffURL = URL(string: stuffingURL)
        
        stuffingWebView.load(URLRequest(url: stuffURL!))
        
    }


}

