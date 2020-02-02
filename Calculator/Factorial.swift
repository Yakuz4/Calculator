//
//  Factorial.swift
//  Calculator
//
//  Created by Yakuza on 02/02/2020.
//  Copyright © 2020 Nikita Ussyukin. All rights reserved.
//

import Foundation

func Factorial (_ i: Int) -> Int {
    var a: Int
    a = i
    if a==0 {
        return 1
    }
    else {
        
        a = a * Factorial(a-1)
        return a
    }
}
