//
//  RYSegundaVentanaViewController.swift
//  App_NavigationData
//
//  Created by cice on 1/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSegundaVentanaViewController: UIViewController {

    
    //MARK: -Variables Locales Globales
    var nombreData : String?
    var apellidoData : String?
    
    
    
    
    //MARK: -IBOUTLET
    
    
    
    @IBOutlet weak var myNombreLBL: UILabel!
    
    
    
    @IBOutlet weak var myApellidoLBL: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myNombreLBL.text = nombreData
        myApellidoLBL.text = apellidoData

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
