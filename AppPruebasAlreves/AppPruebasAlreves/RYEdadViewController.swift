//
//  RYEdadViewController.swift
//  AppPruebasAlreves
//
//  Created by cice on 11/5/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYEdadViewController: UIViewController {
    
    
    //MARK -VARIABLES LOCALES GLOBALES
    
    var insertNewAge : Int?
    
    //MARK: IBOUTLET
    
    
    
    @IBOutlet weak var myTextEdad: UITextField!
    @IBOutlet weak var myEdadPerro: UILabel!
    
    //MARK: IBACTION
    
    @IBAction func myCalculaButton(sender: AnyObject) {
        
        insertNewAge = Int(myTextEdad.text!)
        
        if let newAge = insertNewAge{
            let showNewAge = newAge * 7
            myEdadPerro.text = "la edad de mi perro calculada por mi dueño es \(showNewAge)"
            
        }else{
            alertVC()
        }
        
        
        
        
        }
        
    func alertVC(){
        let alertVC = UIAlertController(title: "Perdona", message: "Por favor introduce la edad", preferredStyle: .Alert)
        let alertAction = UIAlertAction(title: "OK",style: .Default, handler: nil)
        alertVC.addAction(alertAction)
        presentViewController(alertVC, animated: true, completion: nil)                 
    
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
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
