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
    var posicionGeograficaArray = ["40.4512 / -3.2514", "132.4512 / -35.2514", "140.4512 / -34.2514","10.4512 / -1.2514"]
    
    
    var CodigoPostalData : String?
    var CiudadData : String?
    var PosicionGeoData : String?

    
    //MARK: - IBOUTLET
    
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!
    @IBOutlet weak var myTelefonoLBL: UILabel!
    @IBOutlet weak var myEdadPerroLBL: UILabel!
    @IBOutlet weak var myDireccionLBL: UILabel!
    
    @IBOutlet weak var myCodigoPostalTF: UITextField!
    @IBOutlet weak var myCiudadTF: UITextField!
    @IBOutlet weak var myPosicionGeoTF: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myNombreLBL.text = nombreData
        myApellidoLBL.text = apellidoData
        myTelefonoLBL.text = telefonoMovilData
        myDireccionLBL.text = direccionData
        myEdadPerroLBL.text = EdadPerroData
        
        
    // MARK: - PICKERVIEW
        
        crearPicker(myCodigoPostalTF, myArray: CodigoPostalArrayData, myTag: 0, myDelegateVC: self, myDataSourceVC:self)
        crearPicker(myCiudadTF, myArray: localidadesArrayData, myTag: 1, myDelegateVC: self, myDataSourceVC: self)
        crearPicker(myPosicionGeoTF, myArray: posicionGeograficaArray, myTag: 2, myDelegateVC: self, myDataSourceVC: self)

        

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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Identificar el segue por el que estamos pasando
        if segue.identifier == "segueV4" {
            if self.myPosicionGeoTF.text == "" && myCodigoPostalTF.text == "" && myCiudadTF.text == ""{
                presentViewController(displayAlertVC("hey", messageData: "Por favor introduce los datos requeridos"), animated: true, completion: nil)
                
            }else{
                //crear el objetivo que representa el VC que recibe una vista destino
                let ventana4VC = segue.destinationViewController as! VentanaCuatroViewController
                
                ventana4VC.nombreData = self.myNombreLBL.text
                ventana4VC.apellidoData = self.myApellidoLBL.text
                ventana4VC.direccionData = self.myDireccionLBL.text
                ventana4VC.EdadPerroData = self.myEdadPerroLBL.text
                ventana4VC.telefonoMovilData = self.myTelefonoLBL.text
                ventana4VC.CodigoPostalData = self.myCodigoPostalTF.text
                ventana4VC.CiudadData = self.myCiudadTF.text
                ventana4VC.PosicionGeoData = self.myPosicionGeoTF.text
                
            }
        }
    
}
    
}


extension RYSventana3viewControllerViewController : UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0{
            return CodigoPostalArrayData.count
        }else if pickerView.tag == 1{
            return localidadesArrayData.count
        }else{
            return posicionGeograficaArray.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0{
            return CodigoPostalArrayData[row]
        }else if pickerView.tag == 1{
            return localidadesArrayData[row]
        }else{
            return posicionGeograficaArray[row]
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0{
            myCodigoPostalTF.text = CodigoPostalArrayData[row]
            //myImagenCiudadIV.image = UIImage(named: imagenesArray[row])
        }else if pickerView.tag == 1{
            myCiudadTF.text = localidadesArrayData[row]
        }else{
            myPosicionGeoTF.text = posicionGeograficaArray[row]
        }
}

}
