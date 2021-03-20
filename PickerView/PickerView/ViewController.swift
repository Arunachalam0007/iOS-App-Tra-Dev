//
//  ViewController.swift
//  PickerView
//
//  Created by ArunSha on 20/03/21.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    
    @IBOutlet weak var currentDate: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var arr = ["One","Two","Three","Four"]
    var arr1 = ["a","b","c","d"]
    var fPickerValue: String = ""
    var sPickerValue: String = ""
    
 
    
  
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==0 {
            return arr[row]
        } else if component == 1 {
            return arr1[row]
        } else {
            return ""
        }
      
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component==0 {
            fPickerValue = arr[row]
        }
        if component==1 {
            sPickerValue = arr1[row]
        }
        //print("current Component ",component)
        print(fPickerValue + sPickerValue)

//        print("\(fPickerValue)  \(sPickerValue)")
    }
    
    
    // Date Picker
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        
        let formatter = DateFormatter()
            formatter.dateFormat = "d MMM YY, h:mm a"

        currentDate.text = formatter.string(from: sender.date)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
}

