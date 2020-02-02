import UIKit

//
//  ViewController.swift
//  Calculator
//
//  Created by Yakuza on 12/06/2019.
//  Copyright © 2019 Nikita Ussyukin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen:Double = 0
    var firstNum:Double = 0
    var secNum:Double = 0
    var mathSign:Bool = false
    var operation:Int = 0
    var pointOrDigit:Bool = false
    
    @IBOutlet weak var result: UILabel!
    @IBAction func Digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
        else {
            if pointOrDigit == false && result.text! != "0" || result.text! == ""
            {
                result.text = result.text! +
                    String(sender.tag)
            }
        }
    }
    
    @IBAction func clearButt(_ sender: UIButton) {
        
        result.text = ""
        numberFromScreen = 0
        firstNum = 0
        secNum = 0
        mathSign = false
        operation = 0
        pointOrDigit = false
        
    }
    
    @IBAction func pointButt(_ sender: UIButton)
    {
        pointOrDigit = true;
        if result.text == ""
        {
            result.text = "0" + "."
            
        }
        else
        {
            result.text = result.text! + "."
        }
    }
    @IBAction func actions(_ sender: UIButton)
    {
        if result.text != "" && sender.tag != 18 && sender.tag != 19
        {
            firstNum = Double(result.text!)!
            
            if sender.tag == 10{
                result.text = "+"
                operation = sender.tag
                mathSign = true
            } //plus
            else if sender.tag == 11{
                result.text = "-"
                operation = sender.tag
                mathSign = true
            } //minus
            else if sender.tag == 12{
                result.text = "x"
                operation = sender.tag
                mathSign = true
            } //muliply
            else if sender.tag == 13{
                result.text = "/"
                operation = sender.tag
                mathSign = true
            } //divide
            else if sender.tag == 14{
                numberFromScreen = Double(result.text!)!
                if operation == 10{
                    result.text = String(firstNum + numberFromScreen)
                } //plus
                else if operation == 11{
                    result.text = String(firstNum - numberFromScreen)
                } //minus
                else if operation == 12{
                    result.text = String(firstNum * numberFromScreen)
                } //multi
                else if operation == 13{
                    result.text = String(firstNum / numberFromScreen)
                } //divide
            } //equals
            else if sender.tag == 16
            {
                result.text = String(0-(Int(result.text!))!)
                firstNum = (0-(Double(result.text!))!)
            } //plusminus
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}


