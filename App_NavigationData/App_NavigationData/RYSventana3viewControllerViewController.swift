//
//  RYSventana3viewControllerViewController.swift
//  App_NavigationData
//
//  Created by cice on 3/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSventana3viewControllerViewController: UIViewController {

    //MARK: -VARIABLES LOCALES GLOBALES
    
    var nombreData : String?
    var apellidoData : String?
    var insertNewAge : String?
    var direccionData : String?
    var telefonoMovilData : String?
    var EdadPerroData : String?
    var localidadesArrayData = ["Alcorcon", "Madrid", "Fuenlabrada", "Leganes", "Getafe"]
    var CodigoPostalArrayData = ["28001", "28006", "280010", "28023"]
    var PosicionGeoArrayData = ["centro", "Norte", "sur", "Este", "Oeste"]

    
    //MARK: - IBOUTLET
    
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!
    @IBOutlet weak var myTelefonoLBL: UILabel!
    @IBOutlet weak var myEdadPerroLBL: UILabel!
    @IBOutlet weak var myDireccionLBL: UILabel!
    
    @IBOutlet weak var myCodigoPostalTF: UITextField!
    @IBOutlet weak var myCiudadTF: UITextField!
    @IBOutlet weak var myPosicionGeoTF: UITextField!
    
    //MARK: IBACTION
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myNombreLBL.text = nombreData
        myApellidoLBL.text = apellidoData
        myTelefonoLBL.text = telefonoMovilData
        myDireccionLBL.text = direccionData
        myEdadPerroLBL.text = EdadPerroData
        

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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
