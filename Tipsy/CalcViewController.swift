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
    var currentTip: String = "10";

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var zeroTipBtn: UIButton!
    @IBOutlet weak var tenTipBtn: UIButton!
    @IBOutlet weak var twentyTipBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipPressed(_ sender: UIButton) {
        billTextField.endEditing(true);
        
        zeroTipBtn.isSelected = false;
        tenTipBtn.isSelected = false;
        twentyTipBtn.isSelected = false;
        
        currentTip = String(sender.currentTitle!.dropLast());
        sender.isSelected = true;
    }
    
    @IBAction func splitPressed(_ sender: UIStepper) {
        peopleLabel.text = String(format: "%.0f", sender.value);
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let peopleSplit = Int(peopleLabel.text!);
        let billTotal = Double(billTextField.text!);
        tipBrain.calcTip(Float(billTotal ?? 0.0), Int(currentTip) ?? 0, peopleSplit ?? 2);
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

