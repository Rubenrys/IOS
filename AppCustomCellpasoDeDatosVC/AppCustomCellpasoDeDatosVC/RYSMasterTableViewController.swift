//
//  RYSMasterTableViewController.swift
//  AppCustomCellpasoDeDatosVC
//
//  Created by cice on 15/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSMasterTableViewController: UITableViewController {
    
    //MARK: - VARIABLES GLOBALES Y LOCALES
    
    var datosArray = []
    var diccionarioDatos = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        

        let path = NSBundle.mainBundle().pathForResource("Contactos", ofType: "plist")
        datosArray = NSArray(contentsOfFile: path!)!
        
        //Aqui colocamos el titulo a traves de codigo si queremos
        
        self.title = "Mis Contactos"
        
        //Aqui colocalis el boton de la barra de navegación
        
        let customButtonNVC = UIButton(type: .Custom)
        customButtonNVC.setImage(UIImage(named: "woframio.jpg"), forState: .Normal)
        customButtonNVC.frame = CGRectMake(0, 0, 35, 35)
        customButtonNVC.layer.cornerRadius = customButtonNVC.frame.width / 2
        customButtonNVC.imageView!.contentMode = .ScaleAspectFill
        customButtonNVC.clipsToBounds = true
        
        
        customButtonNVC.addTarget(self, action: #selector(RYSMasterTableViewController.showAlertVC), forControlEvents: .TouchUpInside)
        
        let barButtonVC = UIBarButtonItem(customView: customButtonNVC)
        navigationItem.rightBarButtonItem = barButtonVC
        
    
        }
    
    func showAlertVC(){
        /*let alertVC = UIAlertController(title: "Hey", message: "Pulsaste el boton de Perfil que por ahora no esta", preferredStyle: .Alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(alertVC, animated: true, completion: nil)*/
       
        diccionarioDatos = datosArray.objectAtIndex(datosArray.count-1) as! NSDictionary
        
        let FirstName = diccionarioDatos["FirstName"] as! String
        let LastName = diccionarioDatos["LastName"] as! String
        let UserName = diccionarioDatos["usernameTwitter"] as! String
        let datepost = diccionarioDatos["createdPost"] as! String
        let experiencia = diccionarioDatos["Experiencia"] as! String
        let Followers = diccionarioDatos["Followers"] as! String
        let Abstract = diccionarioDatos["Abstract"] as! String
        let imagePost = diccionarioDatos["ImagePost"] as! String
        
        let imagePostCuston = UIImage(named: imagePost)
        
        let ventanaVC2 = self.storyboard?.instantiateViewControllerWithIdentifier("ventanaVC2") as! RYSDetailViewController
        
        ventanaVC2.twitterData = UserName
        ventanaVC2.apellidosData = LastName
        ventanaVC2.nombreData = FirstName
        ventanaVC2.imagePerfilData = imagePostCuston
        ventanaVC2.fechaData = datepost
        ventanaVC2.experienciaData = experiencia
        ventanaVC2.seguidoresData = Followers
        ventanaVC2.abstractData = Abstract
        
        
        navigationController?.pushViewController(ventanaVC2, animated: true)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datosArray.count-1
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! RYSCustomTableViewCell

        // Configure the cell...
        
         diccionarioDatos = datosArray.objectAtIndex(indexPath.row) as! NSDictionary
        
        let FirstName = diccionarioDatos["FirstName"] as! String
        let LastName = diccionarioDatos["LastName"] as! String
        let UserName = diccionarioDatos["usernameTwitter"] as! String
        let imageProfile = diccionarioDatos["ImageProfile"] as! String
        let datepost = diccionarioDatos["createdPost"] as! String
        
        
        
        let imageProfileCustom = UIImage(named: imageProfile)
        
        cell.myNombreLBL.text = FirstName
        cell.myApellidoLBL.text = LastName
        cell.myuserProfileLBL.text = UserName
        cell.myDateLBL.text = datepost
        cell.myPerfileIMG.image = imageProfileCustom
        
        
        
        

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        diccionarioDatos = datosArray.objectAtIndex(indexPath.row) as! NSDictionary
        
        let FirstName = diccionarioDatos["FirstName"] as! String
        let LastName = diccionarioDatos["LastName"] as! String
        let UserName = diccionarioDatos["usernameTwitter"] as! String
        let datepost = diccionarioDatos["createdPost"] as! String
        let experiencia = diccionarioDatos["Experiencia"] as! String
        let Followers = diccionarioDatos["Followers"] as! String
        let Abstract = diccionarioDatos["Abstract"] as! String
        let imagePost = diccionarioDatos["ImagePost"] as! String
        
        let imagePostCuston = UIImage(named: imagePost)
        
        let ventanaVC2 = self.storyboard?.instantiateViewControllerWithIdentifier("ventanaVC2") as! RYSDetailViewController
        
        ventanaVC2.twitterData = UserName
        ventanaVC2.apellidosData = LastName
        ventanaVC2.nombreData = FirstName
        ventanaVC2.imagePerfilData = imagePostCuston
        ventanaVC2.fechaData = datepost
        ventanaVC2.experienciaData = experiencia
        ventanaVC2.seguidoresData = Followers
        ventanaVC2.abstractData = Abstract
        
        
        navigationController?.pushViewController(ventanaVC2, animated: true)
        
        
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
