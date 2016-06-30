//
//  RYSDetailViewController.swift
//  AppCustomCellpasoDeDatosVC
//
//  Created by cice on 15/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSDetailViewController: UIViewController {

    //MARK: VARIABLES LOCALES GLOBALES
    
    var twitterData : String?
    var fechaData : String?
    var imagePerfilData :UIImage?
    var nombreData : String?
    var apellidosData : String?
    var descriptionData : String?
    var experienciaData : String?
    var seguidoresData : String?
    var abstractData : String?
    
    
    
    
    
    
    //MARK: IBOUTLET
    
    
    @IBOutlet weak var myImageProfileIV: UIImageView!
    @IBOutlet weak var myUserNameLBL: UILabel!
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var MyExperiencia: UILabel!
    @IBOutlet weak var myDescripcionLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!
    @IBOutlet weak var myAbstractLBL: UILabel!
    @IBOutlet weak var myFollowersLBL: UILabel!
    @IBOutlet weak var myContactosIV: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myUserNameLBL.text = twitterData
        myNombreLBL.text = nombreData
        myApellidoLBL.text = apellidosData
        MyExperiencia.text = experienciaData
        myImageProfileIV.image = imagePerfilData
        
        
        myImageProfileIV.layer.cornerRadius = myImageProfileIV.frame.width / 2
        myImageProfileIV.clipsToBounds = true

        
        
        
        

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
