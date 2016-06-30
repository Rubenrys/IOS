//
//  UTILS.swift
//  App_NavigationData
//
//  Created by cice on 3/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import Foundation
import UIKit


func displayAlertVC(titleData : String, messageData : String) ->  UIAlertController {
    let alertVC = UIAlertController(title: titleData, message: messageData , preferredStyle: .Alert)
    alertVC.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
    return alertVC

}

func crearPicker(myTextField : UITextField, myArray : [String], myTag : Int, myDelegateVC : UIPickerViewDelegate, myDataSourceVC : UIPickerViewDataSource) -> UIPickerView{
    let myPickerView = UIPickerView()
    myPickerView.delegate = myDelegateVC
    myPickerView.dataSource = myDataSourceVC
    myPickerView.tag = myTag
    myTextField.inputView = myPickerView
    myTextField.text = myArray[0]
    return myPickerView
}



func pickerViewValueChaged (sender: UIDatePicker , myTextField: UITextField){
    
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateStyle = .LongStyle
    dateFormatter.timeStyle = .LongStyle
    myTextField.text = dateFormatter.stringFromDate(sender .date)

}