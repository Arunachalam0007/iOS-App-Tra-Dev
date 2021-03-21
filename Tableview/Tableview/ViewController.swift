//
//  ViewController.swift
//  Tableview
//
//  Created by ArunSha on 21/03/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var fiirstTableView: UITableView!
    
    var arr = ["One","Two","Three","Four"]
    
    //Required
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    //Required
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // downcasting
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath) as! CustomTableViewCell
        
        cell.centerLabel?.text = "Detail Value"
        cell.leftImage?.image = UIImage(named: "Google")
        cell.rightImage?.image = UIImage(named: "Google")

        return cell
    }
    
    
    //indexPath - it contains section and rows values
    //UITableViewCell - 3 properties
    //textLabel,detailTextLabel,imageView
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let currentCellText = tableView.cellForRow(at: indexPath)?.textLabel?.text
        let currentCellDetails = tableView.cellForRow(at: indexPath)?.detailTextLabel?.text
        
        print(currentCellText)
        
        // optional chaining
        if let title = currentCellText, let message = currentCellDetails {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

