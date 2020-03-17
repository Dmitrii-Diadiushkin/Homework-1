//
//  main.swift
//  1|_DiadiushkinDmitrii
//
//  Created by Dmitriy Dyadyushkin on 17.03.2020.
//  Copyright © 2020 Dmitriy Dyadyushkin. All rights reserved.
//

import Foundation

func Enter_Int(coef:String) -> Double {
    var Coef_Int_Str:String
    var Coef_Int:Double?
    print("Введите значение переменной \(coef): ")
    while(true){
        Coef_Int_Str = readLine()!
        Coef_Int = Double(Coef_Int_Str) ?? nil
        if Coef_Int != nil{
            break
        }else{
            print("Пожалуйста, введите число:")
        }
    }
    return Coef_Int!
}

func equation() {
    print("Добро пожаловать в программу, решающую квадратное уравнение вида ax2+bx+c=0")
    let A = Enter_Int(coef: "A")
    let B = Enter_Int(coef: "B")
    let C = Enter_Int(coef: "C")
    
    let D:Double = B*B - 4*A*C
    
    if D > 0 {
        let x1 = (-B + sqrt(D))/A*A
        let x2 = (-B - sqrt(D))/A*A
        print("Корни уравнения: \(x1) и \(x2)")
    } else if D == 0{
        let x = (-B)/A*A
        print("Корень уравнения: \(x)")
    }else if D < 0{
        print("Корней нет.")
    }
}

equation()
print("Finita")
