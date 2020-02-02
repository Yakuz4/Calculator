//
//  ViewController.swift
//  Calculator
//
//  Created by Yakuza on 12/06/2019.
//  Copyright © 2019 Nikita Ussyukin. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    var numberFromScreen:Double = 0
    var firstNum:Double = 0
    var secNum:Double = 0
    var mathSign:Bool = false
    var operation:Int = 0
    var pointOrDigit:Bool = false
    
    func Factorial (_ i: Double) -> Double {
        var a: Double
        a = i
        if a==0 {
            return 1
        }
        else {
            a = a * Factorial(a-1)
            return a
        }
    }
    
    @IBOutlet weak var result: UILabel!
    @IBAction func Digits(_ sender: UIButton) {
        if sender.tag == 25 {
            if mathSign == true
            {
                result.text = String(Int.random(in: 0 ..< 99999999))
                mathSign = false
            }
            
            else {
                if pointOrDigit == false && result.text! != "0" || result.text! == ""
                {
            result.text = result.text! + String(Int.random(in: 0 ..< 99999999))
                }
            }
        }
        else if sender.tag == 27 {
            if mathSign == true
            {
                result.text = String(Double.pi)
                mathSign = false
            }
            else {
                if pointOrDigit == false && result.text! != "0" || result.text! == ""
                {
            result.text = result.text! + String(Double.pi)
                }
            }
        }
        else {
        if mathSign == true
        {
            result.text = String(sender.tag)
            mathSign = false
        }
        else {
            if pointOrDigit == false && result.text! != "0" || result.text! == ""
            {
        result.text = result.text! + String(sender.tag)
            }
        }
        }
    }
    
    @IBAction func clearButt(_ sender: UIButton) {
        if sender.tag == 18{
            result.text = ""
            numberFromScreen = 0
            firstNum = 0
            secNum = 0
            mathSign = false
            operation = 0
            pointOrDigit = false
        }
        else {
            result.text = ""
        }
    }
    
    @IBAction func pointButt(_ sender: UIButton)
    {
        
        if result.text == "" && mathSign == false
        {
            result.text = "0" + "."
            
        }
        else
        {
            result.text = (result.text! + ".")
        }
    }
    @IBAction func actions(_ sender: UIButton)
    {
        if result.text != "" && sender.tag != 18 && sender.tag != 19
        {
            
            
            if sender.tag == 10{
                firstNum = Double(result.text!)!
                result.text = "+"
                operation = sender.tag
                mathSign = true
            } //plus
            else if sender.tag == 11{
                firstNum = Double(result.text!)!
                result.text = "-"
                operation = sender.tag
                mathSign = true
            } //minus
            else if sender.tag == 12{
                firstNum = Double(result.text!)!
                result.text = "x"
                operation = sender.tag
                mathSign = true
            } //muliply
            else if sender.tag == 13{
                firstNum = Double(result.text!)!
                result.text = "/"
                operation = sender.tag
                mathSign = true
            } //divide
            else if sender.tag == 17{
                firstNum = Double(result.text!)!
                result.text = String(firstNum/100)
                operation = sender.tag
                mathSign = true
            }
            else if sender.tag == 21{
                firstNum = Double(result.text!)!
                result.text = String(firstNum * firstNum)
                operation = sender.tag
                mathSign = true
            }
            else if sender.tag == 24{
                firstNum = Double(result.text!)!
                result.text = "!"
                operation = sender.tag
                mathSign = false
            }
            else if sender.tag == 23{
                firstNum = Double(result.text!)!
                result.text = ""
                operation = sender.tag
                mathSign = true
            }
            else if sender.tag == 26{
                firstNum = Double(result.text!)!
                result.text = String(sqrt(firstNum))
                operation = sender.tag
                mathSign = false
            } //sqrt
                
            else if sender.tag == 14 && mathSign == false
            {
                
                if operation == 10{
                    numberFromScreen = Double(result.text!)!
                    result.text = String(firstNum + numberFromScreen)
                } //plus
                else if operation == 11{
                    numberFromScreen = Double(result.text!)!
                    result.text = String(firstNum - numberFromScreen)
                } //minus
                else if operation == 12{
                    numberFromScreen = Double(result.text!)!
                    result.text = String(firstNum * numberFromScreen)
                } //multi
                else if operation == 13{
                    numberFromScreen = Double(result.text!)!
                    result.text = String(firstNum / numberFromScreen)
                } //divide
                else if operation == 24{
                    result.text = String(Factorial( firstNum))
                }//factorial
                else if operation == 23{
                    numberFromScreen = Double(result.text!)!
                    result.text = String(pow(firstNum, numberFromScreen))
                }//degree
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

