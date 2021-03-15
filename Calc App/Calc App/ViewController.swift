//
//  ViewController.swift
//  Calc App
//
//  Created by ArunSha on 15/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var resultBoardValue: String = ""
    var preResultBoardValue: String = ""
    var currentBtnTag: Int = 0
    var currentBtnValue: String = ""
    
    func getResultBoardValue() -> String{
        return resultLabel.text ?? ""
    }
    
    func setResultBoardValue (labelValue : String) {
        resultLabel.text = labelValue
        self.resultBoardValue = resultLabel.text ?? ""
    }
    
    @IBAction func calcNumSelected(_ sender: UIButton) {
        resultBoardValue = getResultBoardValue()
        let selectedNum:String = sender.title(for: .normal) ?? ""
        
        print("Current Btn Tag ",currentBtnTag)
        if resultBoardValue == "0" || currentBtnTag > 0 {
            setResultBoardValue(labelValue: "")
            
            print("Arun Test ",resultBoardValue )
            currentBtnTag = 0
        }
        resultBoardValue.append(selectedNum)
        setResultBoardValue(labelValue: resultBoardValue)
        print("Check Res ",resultBoardValue)
    }
    @IBAction func clearNum(_ sender: UIButton) {
        resultLabel.text = "0"
        print(resultLabel.text ?? 0)
    }
    
    @IBAction func addPrefix(_ sender: UIButton) {
        resultBoardValue = getResultBoardValue()
        let resPrefix = resultBoardValue.prefix(1)
        if resultBoardValue == "0"{
            return
        } else if resPrefix == "-" {
            resultBoardValue.removeFirst()
        } else if resPrefix != "-" {
            resultBoardValue.insert("-", at: resultBoardValue.startIndex)
        }
        setResultBoardValue(labelValue: resultBoardValue)
        
        preResultBoardValue = "Test Arun"
    }
    
    
    @IBAction func calcMSDA(_ sender: UIButton) {
        preResultBoardValue = getResultBoardValue()
        let buttonTag:Int = sender.tag
        currentBtnTag = buttonTag
        currentBtnValue = getMSDAByTag(currentTag: currentBtnTag)
        setResultBoardValue(labelValue: currentBtnValue)
        print("Current \(resultBoardValue) PRE:  \(preResultBoardValue) Tag: \(currentBtnTag)")
    }
    
    func getMSDAByTag(currentTag: Int) -> String {
        switch currentTag {
        case 1:
            return "+"
        case 2:
            return "-"
        case 3:
            return "*"
        case 5:
            return "/"
        default:
            return ""
        }
    }
    
    
    @IBAction func resultMSDA(_ sender: UIButton) {
        let calcResult = preResultBoardValue+currentBtnValue+resultBoardValue
        let exp: NSExpression = NSExpression(format: calcResult)
        let result: String = String(exp.expressionValue(with:nil, context: nil) as! Double)
        print(result)
        setResultBoardValue(labelValue: result)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

