//
//  CalculatorViewController.swift
//  MyFirstApp
//
//  Created by Iwan Siauw on 7/3/17.
//  Copyright © 2017 Iwan Siauw. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

   
    @IBOutlet weak var Bill: UITextField!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var BillDisplay: UILabel!
    @IBOutlet weak var TipsDisplay: UILabel!
    @IBOutlet weak var TotalDisplay: UILabel!
    
    @IBOutlet weak var TipsPercentage: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        Slider.isContinuous = true;
        
        TipsPercentage.text = String(20);
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        let Bills = (Bill.text! as NSString).floatValue;
        let Tips = (Slider.value);
            
            
        BillDisplay.text = String(format: "%.2f", Bills);
            
        let TipsAmount = Bills * (Tips / 100);
            
        TipsDisplay.text = String(format: "%.2f", TipsAmount);
            
        TotalDisplay.text = String(format: "%.2f", Bills + TipsAmount)
            
    }
    
    
    @IBAction func SliderValueChanged(_ sender: UISlider) {
        
        let currentTipsValue = Int(sender.value);
        
        TipsPercentage.text = String(currentTipsValue);
        
    }
    
    func dismissKeyboard() {
        
        view.endEditing(true)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

   }
