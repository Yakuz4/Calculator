//
//  CalcBrain.swift
//  Calculator
//
//  Created by Yakuza on 02/02/2020.
//  Copyright © 2020 Nikita Ussyukin. All rights reserved.
//

import Foundation

class CalcBrain {
    var numberFromScreen:Double = 0
    var firstNum:Double = 0
    var secNum:Double = 0
    var mathSign:Bool = false
    var operation:Int = 0
    var pointOrDigit:Bool = false
    
    func Digits(_ sender: UIButton) {
        if mathSign == true
        {
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
    func clearButt(_ sender: UIButton) {
        
            result.text = ""
            numberFromScreen = 0
            firstNum = 0
            secNum = 0
            mathSign = false
            operation = 0
            pointOrDigit = false
        
    }
}
