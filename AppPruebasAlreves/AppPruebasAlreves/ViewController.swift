//
//  ViewController.swift
//  AppPruebasAlreves
//
//  Created by cice on 11/5/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: --IBOUTLET
    
    
    @IBOutlet weak var myShowPeople: UIImageView!
    
    
    @IBOutlet weak var myNamePeople: UILabel!
    
    
    //MARK: --IBACTION
    
    
    @IBAction func showPersonACTION1(sender: AnyObject) {
        myShowPeople.image = UIImage(named: "goku.png")
        myNamePeople.text = "Goku"
        
        
    }
    
    
    @IBAction func showPersonACTION2(sender: AnyObject) {
        myShowPeople.image = UIImage(named: "bulma.png")
        myNamePeople.text = "Bulma"
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

