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

func crearPicker(mytextField : UITextView , myArray : )

