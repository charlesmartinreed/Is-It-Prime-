//
//  ViewController.swift
//  Is It Prime
//
//  Created by Charles Martin Reed on 9/11/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var primeLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func primeCheckButtonTapped(_ sender: Any) {
        
        //clear out whatever was already there
        //textField.text = ""
        
        let userInput = textField.text
        
        if userInput != "" {
            //change the number label to reflect the number chosen by the user
            numberLabel.text = userInput
                
            //check if the number is prime
            guard let userInputInt = Int(userInput!) else { return }
            if userInputInt == 1 {
                primeLabel.text = "...is NOT a prime number."
            } else if userInputInt % 2 != 0  && userInputInt % 3 != 0 && userInputInt % 5 != 0 {
                primeLabel.text = "...IS a prime number."
            } else if userInputInt == 2 || userInputInt == 3 || userInputInt == 5 {
                primeLabel.text = "...IS a prime number."
            } else {
            primeLabel.text = "...is NOT prime number."
            }
        } else {
            //tell the user to choose a number before tapping the button
            let alert = UIAlertController(title: "Please enter a positive whole number.", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    

}

