//
//  TipBrain.swift
//  Tipsy
//
//  Created by Harrison Gittos on 07/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import Foundation

struct TipBrain {
    var tip: Tip?;
    
    mutating func calcTip(_ total: Float, _ tipPercentage: Int, _ people: Int){
        let currentTip: Float = Float(tipPercentage) / 100;
        let amount = total * (1 + currentTip) / Float(people);
        tip = Tip(amount: amount, people: people, tipPercentage: tipPercentage);
    }
    
    func getAmount() -> String {
        return "£\(String(format: "%.2f", tip?.amount ?? 0.0))";
    }
    
    func getInfo() -> String {
        return "Split between \(tip?.people ?? 0) people, with \(tip?.tipPercentage ?? 0)% tip";
    }
}
