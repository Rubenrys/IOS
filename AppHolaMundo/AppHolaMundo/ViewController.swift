//
//  ViewController.swift
//  AppHolaMundo
//
//  Created by cice on 4/5/16.
//  Copyright © 2016 cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOUTLET
    
    
    
    @IBOutlet weak var myLabelSaludaMundo: UILabel!
    
    //MARK: - IBACTION
    
    
    
    
    
    @IBAction func mybuttonactionsaluda(sender: AnyObject) {
        myLabelSaludaMundo.text = "Hola mundo"
    }
    
    
    
    
    //MARK: - LIFE
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

