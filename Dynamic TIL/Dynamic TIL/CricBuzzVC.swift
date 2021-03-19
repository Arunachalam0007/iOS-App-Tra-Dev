//
//  CricBuzz.swift
//  Dynamic TIL
//
//  Created by ArunSha on 19/03/21.
//

import UIKit


class CricBuzzVC: ViewController {
    
    

        @IBOutlet weak var getCountOfBatsmanLabel: UITextField!
        
        @IBOutlet weak var batsmanNumber: UIButton!
        @IBOutlet weak var batsmanName: UIButton!
        @IBOutlet weak var batsmanImage: UIButton!
        
        var dynamicBatsmanName : [UILabel] = []
        var dynamicTextField: [UITextField] = []
        var dynamicImageView: [UIImageView] = []
        
        var count:Int = 0
        
        @IBAction func addDynamicCount(_ sender: Any) {
            clearDynamicTIL()
        }
        @IBAction func addDynamicTIL(_ sender: UIButton) {
            
            count = Int(getInputCount.text ?? "") ?? 0
            let addDynamicTILTag:Int = sender.tag
            
            if count == 0 {
                return
            }
            
            print(sender.tag)
            
            switch addDynamicTILTag {
            case 1:
                addDynamicLabel()
            case 2:
                addDynamicTextField()
            case 3:
                addDynamicImageView()
            default:
                print("Your tab not marged to any specified action")
            }
        
            
        }
        
        func addDynamicLabel(){
            let labelOriginX:Int = Int(numberBtn.frame.origin.x)
            let labelOriginY:Int = Int(numberBtn.frame.origin.y)
            
            for i in 0..<count {
                dynamicLabel.insert(UILabel(), at: i)
                dynamicLabel[i].frame = CGRect(x: labelOriginX, y: (labelOriginY+((i+1)*100)), width: 100, height: 100)
                dynamicLabel[i].text = String(i+1)
                dynamicLabel[i].backgroundColor = .black
                dynamicLabel[i].textColor = .white
                dynamicLabel[i].textAlignment = .center
                dynamicLabel[i].tag = 11
                self.view.addSubview(dynamicLabel[i])
            }
        }
        
        func addDynamicTextField() {
            let textFieldOriginX:Int = Int(textBtn.frame.origin.x)
            let textFieldOriginY:Int = Int(textBtn.frame.origin.y)
            
            for i in 0..<count {
                dynamicTextField.insert(UITextField(), at: 0)
                dynamicTextField[0].frame = CGRect(x: textFieldOriginX, y: (textFieldOriginY+((i+1)*100)), width: 100, height: 100)
                dynamicTextField[0].text = "ONE"
                dynamicTextField[0].backgroundColor = .gray
                dynamicTextField[0].textColor = .white
                dynamicTextField[0].textAlignment = .center
                dynamicTextField[0].tag = 11
                self.view.addSubview(dynamicTextField[0])
            }
        }
        
        func addDynamicImageView() {
            let imageViewOriginX:Int = Int(imageBtn.frame.origin.x)
            let imageViewOriginY:Int = Int(imageBtn.frame.origin.y)
            
            for i in 0..<count {
                dynamicImageView.insert(UIImageView(), at: i)
                dynamicImageView[i].frame = CGRect(x: imageViewOriginX, y: (imageViewOriginY+((i+1)*100)), width: 100, height: 100)
                dynamicImageView[i].image = UIImage(named: "Google")
                
                dynamicImageView[i].tag = 11
                self.view.addSubview(dynamicImageView[i])
            }
        }
        
        func clearDynamicTIL(){
            
    //        for view in view.subviews {
    //            if view.tag == 11 {
    //                view.removeFromSuperview()
    //            }
    //        }
            for view in view.subviews where view.tag == 11 {
                view.removeFromSuperview()
            }
    //        if let viewWithTag = self.view.viewWithTag(11) {
    //             print("Tag 100")
    //             viewWithTag.removeFromSuperview()
    //         } else {
    //             print("tag not found")
    //         }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }


    }
}
