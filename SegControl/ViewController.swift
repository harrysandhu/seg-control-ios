//
//  ViewController.swift
//  SegControl
//
//  Created by Harry Sandhu on 2020-10-25.
//

import UIKit

class ViewController: UIViewController {

    private let convertState = [
        0 : ["convertTo": "KM", "convertFrom":"Miles"],
        1 : ["convertTo": "Miles", "convertFrom":"KM"]
    ]
    
    private var mode: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.convertButton.setTitle("Convert To \(self.convertState[self.mode]!["convertTo"]!)", for: .normal)
        self.valueTF.placeholder = "Enter value in \(self.convertState[self.mode]!["convertFrom"]!)"
        self.resultLabel.text = ""
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var convertButton: UIButton!
    
    @IBOutlet weak var valueTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func modeDidChange(_ sender: UISegmentedControl) {

        self.mode = sender.selectedSegmentIndex
        self.convertButton.setTitle("Convert To \(self.convertState[self.mode]!["convertTo"]!)", for: .normal)
        self.valueTF.placeholder = "Enter value in \(self.convertState[self.mode]!["convertFrom"]!)"
        
    }
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        var distance:Distance;
        if let value = Double(self.valueTF.text!) {
            switch self.mode{
            case 0:
                distance = Distance(miles: value)
                self.resultLabel.text = String(distance.km) + " KM"
            case 1:
                distance = Distance(km: value)
                self.resultLabel.text = String(distance.miles) + " Miles"
            default:
            break;
            }
        }
    }
}

