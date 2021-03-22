//
//  ViewController.swift
//  TableViewLearning
//
//  Created by ArunSha on 22/03/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var learnTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // print("No.ofRownsInSection")
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellForRowAT ",indexPath.row)

        let cell = tableView.dequeueReusableCell(withIdentifier: "tBCIdentifier", for: indexPath) as! TableViewCell
        
        cell.tbCellLabelView.text = "Hello Sha"
        cell.tbImagView.image =  #imageLiteral(resourceName: "I will")
        
        
//        var textCellTable = UILabel()
//        cell.textLabel?.text = "Hi"
//        cell.detailTextLabel?.text = "Detail Text"
//        cell.imageView?.image = #imageLiteral(resourceName: "I will")
//
        return cell
        
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tabCellTitle = tableView.cellForRow(at: indexPath)?.textLabel?.text
        let tabCellDescription = tableView.cellForRow(at: indexPath)?.detailTextLabel?.text
        
        
        if let title = tabCellTitle, let desc = tabCellDescription {
            tabAlert(title: title , message: desc)
        }
        // create the alert
        
    }
    
    func tabAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)

        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

