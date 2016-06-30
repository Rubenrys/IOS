//
//  RYSDetalleContactoViewController.swift
//  App_TaskVersion2.0
//
//  Created by cice on 27/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSDetalleContactoViewController: UIViewController {
    
    
    //MARK: - VARIABLES
    
    var iamgePerfilData : UIImage?
    var cuentaTwitterData : String?
    var nombreData : String?
    var apellidoData : String?
    var creadoEnData : String?
    var experienciaFata : String?
    var descripcionData : String?
    var telefonoMovilData : String?
    var telefonoTrabajodata : String?
    var emailData : String?
    var linkedinData : String?
    
    

    //MARK: - IBOUTLET
    
    
    
    @IBOutlet weak var myDegradoImageView: UIImageView!
    @IBOutlet weak var myImagePerfilIV: UIImageView!
    @IBOutlet weak var myTwitterLBL: UILabel!
    @IBOutlet weak var myMombreLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!
    @IBOutlet weak var myCreadoEnLBL: UILabel!
    @IBOutlet weak var myExperienciaLBL: UILabel!
    @IBOutlet weak var myDescripcionLBL: UILabel!
    @IBOutlet weak var myTelefonoMovilLBL: UILabel!
    @IBOutlet weak var myTelefonoTrabajoLBL: UILabel!
    @IBOutlet weak var myEmailLBL: UILabel!
    @IBOutlet weak var myLinkedinLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myImagePerfilIV.image = iamgePerfilData
        myMombreLBL.text = nombreData
        myApellidoLBL.text = apellidoData

        
        myImagePerfilIV.layer.cornerRadius = myImagePerfilIV.frame.width/6
        myImagePerfilIV.clipsToBounds=true
        
        myDegradoImageView.layer.cornerRadius = myDegradoImageView.frame.width/6
        myDegradoImageView.clipsToBounds=true
        
        
        
        
        

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
