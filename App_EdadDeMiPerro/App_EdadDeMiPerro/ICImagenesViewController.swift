//
//  ICImagenesViewController.swift
//  App_EdadDeMiPerro
//
//  Created by cice on 11/5/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class ICImagenesViewController:
    UIViewController {

    //MARK: -VARIABLES LOCALES GLOBALES
    
    
    
    
    //MARK: -IBOUTLET
    
    
    @IBOutlet weak var myShowPeople: UIImageView!
    @IBOutlet weak var myNameLabel: UILabel!
    
    //MARK: IBACTION
    
    
    
    @IBAction func showPerson1Action(sender: AnyObject) {
        
        myShowPeople.layer.cornerRadius = myShowPeople.frame.width / 2        myShowPeople.image = UIImage(named:"maria.jpg")
        myNameLabel.text = ("Maria")
    }
    
    
    
    
    @IBAction func showPerson2Action(sender: AnyObject) {
        
        myShowPeople.layer.cornerRadius = myShowPeople.frame.width / 2
        myShowPeople.image = UIImage(named:"felipe-vi.jpg")
        myNameLabel.text = ("Felipe")
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
