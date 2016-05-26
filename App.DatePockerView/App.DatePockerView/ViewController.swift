//
//  ViewController.swift
//  App.DatePockerView
//
//  Created by cice on 23/5/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK - IBOUTLET
    
    
    @IBOutlet weak var myDateLBL: UILabel!
    @IBOutlet weak var myDateTF: UITextField!
    
    //MARK - IBACTION
    
    
    @IBAction func showPickerviewEditing(myTextField: UITextField) {
    
    
        //fase de creacion del pickerviewdate
    
        let pickerDateView = UIDatePicker()
        pickerDateView.datePickerMode = UIDatePickerMode.DateAndTime
        myTextField.inputView = pickerDateView
        pickerDateView.addTarget(self, action: #selector(ViewController.datePickerValueChanged(_:)), forControlEvents: .ValueChanged)
    
    }
    
    
    
    //MARK: - UTILS
    
    func datePickerValueChanged(myCustomDatePicker: UIDatePicker){
    
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.MediumStyle
        
        myDateLBL.text = dateFormatter.stringFromDate(myCustomDatePicker.date)
    
    
    
    
    
    
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: BAJA EL TECLADO
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
}

