//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Harrison Gittos on 07/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var amount: String?;
    var info: String?;
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = amount;
        infoLabel.text = info;
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
