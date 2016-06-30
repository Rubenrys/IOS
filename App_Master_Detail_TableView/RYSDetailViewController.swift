//
//  RYSDetailViewController.swift
//  App_Master_Detail_TableView
//
//  Created by cice on 13/6/16.
//  Copyright © 2016 rys. All rights reserved.
//

import UIKit

class RYSDetailViewController: UIViewController {

    //MARK: - VARIABLES GLOBALES LOCALES
    
    
    var mesData : String?
    
    
    //MARK: - IBOUTLET
    
    
    
    @IBOutlet weak var myMesDelAnhoLBL: UILabel!
    
    
    
    
    //MARK: - IBACTION
    
    @IBAction func myVolverBT(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myMesDelAnhoLBL.text = mesData
        
        
        
    

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
