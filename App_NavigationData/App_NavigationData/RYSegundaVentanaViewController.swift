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
    var insertNewAge : Int?
    
    
    
    
    //MARK: -IBOUTLET
    
    @IBOutlet weak var myNombreLBL: UILabel!
    
    @IBOutlet weak var myApellidoLBL: UILabel!
    
    @IBOutlet weak var myTelefonoMovilTF: UITextField!
    
    @IBOutlet weak var myDireccionTF: UITextField!
    
    @IBOutlet weak var myEdaddelPerroTF: UITextField!
    
    @IBOutlet weak var EdadPerroLBL: UILabel!
    
    //MARK: -IBACTION
    
    
    
    @IBAction func CalculaEdad(sender: AnyObject) {
        
            
            insertNewAge = Int(myEdaddelPerroTF.text!)
            
            if let newAge = insertNewAge{
                let showNewAge = newAge * 7
                EdadPerroLBL.text = "la edad es \(showNewAge)"
                
            }else{
                print("Coloca la edad de tu perrillo por favor")
                
            }
        
    }


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
    
    //MARK: BAJAR EL TECLADO
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
        

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Identificar el segue por el que estamos pasando
        if segue.identifier == "sequeV3" {
            if self.myTelefonoMovilTF.text == "" && myDireccionTF.text == "" && myEdaddelPerroTF.text == ""{
                presentViewController(displayAlertVC("hey", messageData: "Por favor introduce los datos requeridos"), animated: true, completion: nil)
            
            }else{
            //crear el objetivo que representa el VC que recibe una vista destino
            let ventana3VC = segue.destinationViewController as! RYSventana3viewControllerViewController
            
            ventana3VC.nombreData = self.myNombreLBL.text
            ventana3VC.apellidoData = self.myApellidoLBL.text
            ventana3VC.direccionData = self.myDireccionTF.text
            ventana3VC.EdadPerroData = self.myEdaddelPerroTF.text
            ventana3VC.telefonoMovilData = self.myTelefonoMovilTF.text
            }
        }
        
    }
    



}


