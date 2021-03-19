//
//  CricBuzzViewController.swift
//  Dynamic TIL
//
//  Created by ArunSha on 20/03/21.
//

import UIKit

class CricBuzzViewController: ViewController {
    
    
    @IBOutlet weak var rankingBtn: UIButton!
    
    @IBOutlet weak var batsmanNameBtn: UIButton!
    @IBOutlet weak var batsmanImgBtn: UIButton!
    @IBOutlet weak var topBatsmanNumers: UITextField!
    
    var batsmansRanking : [UILabel] = []
    var batsmanNames: [UITextField] = []
    var batsmanImg: [UIImageView] = []
    var batsmanProfileCount = 0
    
    let batsmanOrders: [Int:String] = [1:"Dawid Malan", 2:"Aaron Finch", 3:"Babar Azam" , 4: "KL Rahul", 5: "Virat Kohli"]
    
    @IBAction func onClearBatsmanProfile(_ sender: UITextField) {
        print("on Editing")
        
        for view in view.subviews where view.tag == 11 {
            view.removeFromSuperview()
        }
        
    }
    

    @IBAction func addBatsmanProfile(_ sender: UIButton) {
        
        batsmanProfileCount = Int(topBatsmanNumers.text ?? "") ?? 0
        if batsmanProfileCount == 0 {
            return
        }
        let batsmanProfileTag:Int = sender.tag
        print(sender.tag)
        
        switch batsmanProfileTag {
        case 1:
            addBatsmanRanking()
        case 2:
            addBatsmanName()
        print("")
        case 3:
            addBatsmanImg()
        default:
            print("Your tab not marged to any specified action")
        }
    
        
    }
    
    func addBatsmanRanking(){
        let rankingOriginX:Int = Int(rankingBtn.frame.origin.x)
        let rankingOriginY:Int = Int(rankingBtn.frame.origin.y)
        
        for i in 0..<batsmanProfileCount {
            batsmansRanking.insert(UILabel(), at: i)
            batsmansRanking[i].frame = CGRect(x: rankingOriginX, y: (rankingOriginY+((i+1)*100)), width: 100, height: 100)
            batsmansRanking[i].text = String(i+1)
            batsmansRanking[i].backgroundColor = .black
            batsmansRanking[i].textColor = .white
            batsmansRanking[i].textAlignment = .center
            batsmansRanking[i].tag = 11
            self.view.addSubview(batsmansRanking[i])
        }
    }
    
    func addBatsmanName() {
        let bastmanNameOriginX:Int = Int(batsmanNameBtn.frame.origin.x)
        let batsmanNameOriginY:Int = Int(batsmanNameBtn.frame.origin.y)
        print(bastmanNameOriginX)
        print(batsmanNameOriginY)

        for i in 0..<batsmanProfileCount {
                        batsmanNames.insert(UITextField(), at: 0)
                        batsmanNames[0].frame = CGRect(x: bastmanNameOriginX, y: (batsmanNameOriginY+((i+1)*100)), width: 142, height: 100)
                        batsmanNames[0].text = batsmanOrders[i+1]
                        batsmanNames[0].backgroundColor = .gray
                        batsmanNames[0].textColor = .white
                        batsmanNames[0].textAlignment = .center
                        batsmanNames[0].tag = 11
            self.view.addSubview(            batsmanNames[0])
        }
    }
    
    func addBatsmanImg() {
        let batsmanImgOriginX:Int = Int(batsmanImgBtn.frame.origin.x)
        let batsmanImgOriginY:Int = Int(batsmanImgBtn.frame.origin.y)
        
        for i in 0..<batsmanProfileCount {
            dynamicImageView.insert(UIImageView(), at: i)
            dynamicImageView[i].frame = CGRect(x: batsmanImgOriginX, y: (batsmanImgOriginY+((i+1)*100)), width: 100, height: 100)
            dynamicImageView[i].image = UIImage(named: batsmanOrders[i+1]!)
            
            dynamicImageView[i].tag = 11
            self.view.addSubview(dynamicImageView[i])
        }
    }
    
    
    
}
