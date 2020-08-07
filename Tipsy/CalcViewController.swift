//
//  ViewController.swift
//  Tipsy
//
//  Created by Harrison Gittos on 07/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {
    
    var tipBrain: TipBrain = TipBrain();
    var currentTip: String = "0";

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipPressed(_ sender: UIButton) {
        currentTip = sender.currentTitle!;
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self);
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController;
            destinationVC.amount = tipBrain.getAmount();
            destinationVC.info = tipBrain.getInfo();
        }
    }
    


}

