//
//  RYSContactosTableViewController.swift
//  App_CuestomCell_dictionary
//
//  Created by cice on 13/6/16.
//  Copyright © 2016 rys. All rights reserved.
//

import UIKit

class RYSContactosTableViewController: UITableViewController {
    
    
    
    
    //MARK: - VARIABLES LOCALES GLOBALES
    
    var contactosArray = []
    var contactosDiccionario = [:]
    
    
    
    
    //MARK: - LIVE VC
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Aqui buscamosen la raiz principal el fichero que contiene la información
        let path = NSBundle.mainBundle().pathForResource("Contactos", ofType: "plist")
        contactosArray = NSArray(contentsOfFile: path!)!

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
        return contactosArray.count
    }

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! RYSCustomCell

        // Configure the cell...
        
        contactosDiccionario = contactosArray.objectAtIndex(indexPath.row) as! NSDictionary
        let firstName = contactosDiccionario["firstName"] as! String
        let lastName = contactosDiccionario["LastName"] as! String
        let description = contactosDiccionario["Description"] as! String
        let imageName = contactosDiccionario["imageName"]
        let imageCustom = UIImage(named: "\(imageName)")
        
        cell.myNombreLBL.text = firstName
        cell.ApellidosLBL.text = lastName
        cell.myDescripcionLBL.text = description
        cell.myImageIV.image = imageCustom
        
        
        
        return cell
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
