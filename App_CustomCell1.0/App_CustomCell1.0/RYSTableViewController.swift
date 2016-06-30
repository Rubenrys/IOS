//
//  RYSTableViewController.swift
//  App_CustomCell1.0
//
//  Created by cice on 13/6/16.
//  Copyright © 2016 rys. All rights reserved.
//

import UIKit

class RYSTableViewController: UITableViewController {
    
    
    //MARK: - VARIABLES LOCALES GLOBALES
    var posteosArray = []
    var posteosDiccionario = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let path = NSBundle.mainBundle().pathForResource("Contactos", ofType: "plist")
        posteosArray = NSArray(contentsOfFile: path!)!
       
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
        return posteosArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! RYSCustomCell

        // Configure the cell...
        
        posteosDiccionario = posteosArray.objectAtIndex(indexPath.row) as! NSDictionary
        
        let firstName = posteosDiccionario["FirstName"] as! String
        let LastName = posteosDiccionario["LastName"] as! String
        let usernameTwitter = posteosDiccionario["usernameTwitter"] as! String
        let createdPost = posteosDiccionario["createdPost"] as! String
        let likeButton = posteosDiccionario["likeButton"] as! String
        let shareButton = posteosDiccionario["shareButton"] as! String
        let commentButton = posteosDiccionario["commentButton"] as! String
        let description = posteosDiccionario["description"] as! String
        let imageProfile = posteosDiccionario["ImageProfile"] as! String
        let imagePost = posteosDiccionario["ImagePost"] as! String
        
        
        let imageProfileCustom = UIImage(named: imageProfile)
        let imagePostCustom = UIImage(named: imagePost)

        
        cell.myNameUSerLBL.text = firstName
        cell.myLastNameuserLBL.text = LastName
        cell.myUsernameTwitterLBL.text = usernameTwitter
        cell.myDatePostLBL.text = createdPost
        cell.myLikeStringLBL.text = likeButton
        cell.myShareStringLBL.text = shareButton
        cell.myCommentStringLBL.text = commentButton
        cell.myDescriptionLBL.text = description
        cell.myimagerofileIV.image = imageProfileCustom
        cell.myPostImageLBL.image = imagePostCustom
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
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
