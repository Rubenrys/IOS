//
//  ViewController.swift
//  App_EdadDeMiPerro
//
//  Created by cice on 9/5/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var insertNewAge : Int?
    
    
    //MARK: - IBOULET
    @IBOutlet weak var MytextFied: UITextField!
    @IBOutlet weak var showMyDogAge: UILabel!
    
    
    //MARK - IBACTION
    
    @IBAction func showNewAge(sender: AnyObject) {
        
    insertNewAge = Int(MytextFied.text!)
        
        if let newAge = insertNewAge{
            let showNewAge = newAge * 7
            showMyDogAge.text = "la edad de mi perro calculada por mi dueño es \(showNewAge)"
        
        }else{
            print("Coloca la edad de tu perrillo por favor")
        
        }
    }
    
   //MARK: LIFE VC
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: -UTILS
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //self.view.endEditing(true) para toda la pantalla y con el scroll view se jode
        self.MytextFied.endEditing(true)
    }


}
    



