//
//  ViewController.swift
//  App_NavigationData
//
//  Created by cice on 1/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: - IBOUTLET
    
    
    @IBOutlet weak var myNombreTF: UITextField!
    
    @IBOutlet weak var myApellidoTF: UITextField!
    
    
    
    
    
    //MARK: - IBACTION
    
    @IBAction func cerrarVC(segue: UIStoryboardSegue){
        
        print("Logout completado")
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: BAJAR EL TECLADO
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
        
        
    }
    
    
    //MARK: -NAVEGACION
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Identificar el segue por el que estmos pasando
        if segue.identifier == "segueV2" {
        
        //crear el objetivo que representa el VC que recibe una vista destino
            let ventana2VC : RYSegundaVentanaViewController = segue.destinationViewController as! RYSegundaVentanaViewController
            
            ventana2VC.nombreData = myNombreTF.text
            ventana2VC.apellidoData = myApellidoTF.text
            
        }
    }
    
    

}

