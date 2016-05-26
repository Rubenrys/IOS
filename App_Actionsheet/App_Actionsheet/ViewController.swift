//
//  ViewController.swift
//  App_Actionsheet
//
//  Created by cice on 18/5/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: --- VARIABLES LOCALES GLOBALES
    
    var loginTextField : UITextField?
    var passwordTextField : UITextField?
    let imageF = UIImage(named: "facebook@2x.png")
    let imageT = UIImage(named: "twitter@2x" )
    let imageL = UIImage(named: "linkedin@2x.png")
    let imageTi = UIImage(named: "tinder@2x.png")
    
    
    
    //MARK: -IBACTION
    
    
    @IBAction func barRedesSocialesACTION(sender: AnyObject) {
        
     let alertRS = UIAlertController(title: "Redes Sociales", message: "Elige tu red social", preferredStyle: .ActionSheet)
        
     let cancelAction = UIAlertAction(title: "Cancelar", style: .Cancel) { (action) in
        print("has pulsado el boton de cancel")
        }
     
    let Facebook = UIAlertAction(title: "Facebook", style: .Default) { (action) in
            print("has pulsado el boton de Facebook")
        }
        
    let twitter = UIAlertAction(title: "twitter", style: .Default) { (action) in
            print("has pulsado el boton de twitter")
        }
        
    let LinkedIn = UIAlertAction(title: "LinkedIn", style: .Default) { (action) in
            print("has pulsado el boton de LinkedIn")
        }
        
    let Tinder = UIAlertAction(title: "Tinder", style: .Default) { (action) in
            print("has pulsado el boton de cancel")
        }
        
    alertRS.addAction(cancelAction)
    Facebook.setValue(imageF, forKey: "image")
    alertRS.addAction(Facebook)
    twitter.setValue(imageT, forKey: "image")
    alertRS.addAction(twitter)
    LinkedIn.setValue(imageL, forKey: "image")
    alertRS.addAction(LinkedIn)
    Tinder.setValue(imageTi, forKey: "image")
    alertRS.addAction(Tinder)
        
        
    presentViewController(alertRS, animated: true, completion: nil)
    


    
        
        
        
    }
   
    
    
    
    @IBAction func barHardwareACTION(sender: AnyObject) {
        
        let alertBH = UIAlertController(title: "Hardware", message: "Elige una opción", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .Cancel) { (action) in
            print("has pulsado el boton de cancel")
            
        }
        
        let Camera = UIAlertAction(title: "Camara", style: .Default) { (action) in
            print("has pulsado el boton de Camera")
            self.takePhotoWhitCamera()
        }
        
        let Galery = UIAlertAction(title: "Galeria", style: .Default) { (action) in
            print("has pulsado el boton de Galeria")
            self.choosePhotoLibrary()
        }
        
        
        alertBH.addAction(cancelAction)
        Camera.setValue(imageF, forKey: "image")
        alertBH.addAction(Camera)
        Galery.setValue(imageT, forKey: "image")
        alertBH.addAction(Galery)
        
        
        
        presentViewController(alertBH, animated: true, completion: nil)
        
        
        
    }
    
    
    
    
    @IBAction func barvariosACTION(sender: AnyObject) {
        
        
        
        
        
        
    }
    
    
    
    
    //TODO: - POR VAFOR NO TOCAR
    @IBAction func alertControllerACTION(sender: AnyObject) {
        
        if sender.tag == 0{
            
            //insertar un AlertController simple
            let alertVC = UIAlertController(title: "Alert Controller Standar", message: "Este Alert Controller es la presentación por defecto", preferredStyle: .Alert)
            
            let cancelAction = UIAlertAction(title: "Cancelar", style: .Cancel, handler: { (alert) in
                print("has presionado el boton cancelar")
            })
            
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: { (alert) in
                print("Has presionado el boton OK")
            })
            
            alertVC.addAction(cancelAction)
            alertVC.addAction(okAction)
            
            presentViewController(alertVC, animated: true, completion: nil)
        
        
        }else if sender.tag == 1{
            
            let alertVCTF = UIAlertController(title: "UIAlert Controller", message: "UIAlert Controller con un TextField", preferredStyle: .Alert)
            
            let oKAction = UIAlertAction(title: "OK", style: .Default, handler: { (action) in
                print("Boton OK presionado")
            })
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action) in
                print("Boton Cancel Presionado")
            })
            
            alertVCTF.addAction(oKAction)
            alertVCTF.addAction(cancelAction)
            
            alertVCTF.addTextFieldWithConfigurationHandler({ (textField) in
                self.loginTextField = textField
                self.loginTextField?.placeholder = "introduce tu LogIn"
            
            })
            
            
            presentViewController(alertVCTF, animated: true, completion: nil)
        
            
            
        
        }else if sender.tag == 2{
            
            
            let alertVCLF = UIAlertController(title: "UIAlert Controller", message: "UIAlert Controller con LogIn Form", preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: { (action) in
                print("Boton OK Presionado")
            })
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action) in
                print("Has pulsado el cancel")
            })
            
            alertVCLF.addAction(okAction)
            alertVCLF.addAction(cancelAction)
            
            alertVCLF.addTextFieldWithConfigurationHandler({ (textField) in
                self.loginTextField = textField
                self.loginTextField?.placeholder = "Introduce tu LogIn"
            })
            
            
            alertVCLF.addTextFieldWithConfigurationHandler({ (textField) in
                self.passwordTextField = textField
                self.passwordTextField?.placeholder = "Introduce tu Clave"
                self.passwordTextField?.secureTextEntry = true
            })

            
            presentViewController(alertVCLF, animated: true, completion: nil)
            
        
        }else if sender.tag == 3{
            
            
            //insertar un AlertController simple
            let alertVC = UIAlertController(title: "Alert Controller Standar", message: "Este Alert Controller es la presentación por defecto", preferredStyle: .Alert)
            
            let botonUno = UIAlertAction(title: "Uno", style: .Default, handler: { (alert) in
                print("has presionado el boton Uno")
                self.takePhotoWhitCamera()
            
            })
                
            let botonDos = UIAlertAction(title: "Dos", style: .Default, handler: { (alert) in
                print("has presionado el boton Dos")
                self.choosePhotoLibrary()
            
            
            })
            let botonTres = UIAlertAction(title: "Tres", style: .Default, handler: { (alert) in
                print("has presionado el boton Tres")
            
            })
            
            let botonCuatro = UIAlertAction(title: "Cuatro", style: .Default, handler: { (alert) in
                print("has presionado el boton Cuatro")
            
            })
            
                    
            let cancelAction = UIAlertAction(title: "Cancelar", style: .Cancel, handler: { (alert) in
                    print("has presionado el boton cancelar")
                })
                
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: { (alert) in
                    print("Has presionado el boton OK")
                })
                
                alertVC.addAction(botonUno)
                alertVC.addAction(botonDos)
                alertVC.addAction(botonTres)
                alertVC.addAction(botonCuatro)
            
            
            
                alertVC.addAction(cancelAction)
                alertVC.addAction(okAction)
            
                
                presentViewController(alertVC, animated: true, completion: nil)
                

            
            
            
            
            
        
        }else if sender.tag == 4{
            
            let alertAS = UIAlertController(title: "UIActionSheet", message: "esta es otra manera de dar opciones a ti usuario", preferredStyle: .ActionSheet)
            
            let oKAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
            let deleteAction = UIAlertAction(title: "Delete", style: .Destructive, handler: nil)
            
            alertAS.addAction(oKAction)
            alertAS.addAction(cancelAction)
            alertAS.addAction(deleteAction)
            
            presentViewController(alertAS, animated: true, completion: nil)
            
            
            
            
            
            
            
            
            
        
        }
        
        
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//MARK: ----- PROTOCOLO DELEGADO UIIMAGEPICKERVIEW - UINAVIGATION CONTROLLER

extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    func takePhotoWhitCamera(){
    
       
        let imagePC = UIImagePickerController()
        imagePC.sourceType = .Camera
        imagePC.delegate = self
        imagePC.allowsEditing = true
        presentViewController(imagePC, animated: true, completion: nil)
    
    
    }
    
    
    func choosePhotoLibrary(){
      
        let imagePC = UIImagePickerController()
        imagePC.sourceType = .PhotoLibrary
        imagePC.delegate = self
        imagePC.allowsEditing = true
        presentViewController(imagePC, animated: true, completion: nil)
       
        
        
        
        
    }


}










