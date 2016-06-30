//
//  VentanaCuatroViewController.swift
//  App_NavigationData
//
//  Created by cice on 3/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit
import MessageUI

class VentanaCuatroViewController: UIViewController {
    
    //MARK: VARIABLES LOCALES Y GLOBALES
    
    var nombreData : String?
    var apellidoData : String?
    var direccionData : String?
    var telefonoMovilData : String?
    var EdadPerroData : String?
    var CodigoPostalData : String?
    var CiudadData : String?
    var PosicionGeoData : String?
    
    

    
    
    // MARK: - IBOUTLET
    
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!
    @IBOutlet weak var myTelefonoLBL: UILabel!
    @IBOutlet weak var myDireccionLBL: UILabel!
    @IBOutlet weak var myPosicionGeoLBL: UILabel!
    @IBOutlet weak var myCiudadLBL: UILabel!
    @IBOutlet weak var myCodigoPostalLBL: UILabel!
    @IBOutlet weak var myEdadPerroLBL: UILabel!
    
    
    
    @IBOutlet weak var myfechayhoraTF: UITextField!
    @IBOutlet weak var myTutoriaLBL: UILabel!

    //MARK: - IBACTION
    
    
    @IBAction func showDatePicker(sender: UITextField) {
        
        let datePickerView = UIDatePicker()
        datePickerView.datePickerMode = .DateAndTime
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: Selector(pickerViewValueChaged(datePickerView, myTextField: myfechayhoraTF)), forControlEvents: .ValueChanged)
        
    }
    
    @IBAction func mylogout(sender: AnyObject) {
     performSegueWithIdentifier("Logout", sender: self)
        
        
    }
    
    
    @IBAction func sendMailToRecipient(sender: AnyObject) {
        
        let mailComposeVC = configuredMailComposeVC()
        if MFMailComposeViewController.canSendMail(){
        presentViewController(mailComposeVC, animated: true, completion: nil)
        
        }else{
        presentViewController(displayAlertVC("Hey", messageData: "No se ha enviado enviar el mail"), animated: true, completion: nil)
    
        }
        
        
    }
    
    
    func configuredMailComposeVC() -> MFMailComposeViewController{
    
    let mailCompose = MFMailComposeViewController()
    mailCompose.mailComposeDelegate = self
    mailCompose.setToRecipients([""])
    mailCompose.setSubject("")
        
    let emailBody = "Nombre \(myNombreLBL.text) \n Apellido"
        
     mailCompose.setMessageBody(emailBody, isHTML: false)
     return mailCompose
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myNombreLBL.text = nombreData
        myApellidoLBL.text = apellidoData
        myEdadPerroLBL.text = EdadPerroData
        myTelefonoLBL.text = telefonoMovilData
        myDireccionLBL.text = direccionData
        myPosicionGeoLBL.text = PosicionGeoData
        myCiudadLBL.text = CiudadData
        myCodigoPostalLBL.text = CodigoPostalData
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    
    

}


//MARK: - DELEGADO DE MFM
extension VentanaCuatroViewController : MFMailComposeViewControllerDelegate{
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

