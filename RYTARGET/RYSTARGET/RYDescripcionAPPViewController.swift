//
//  RYDescripcionAPPViewController.swift
//  RYSTARGET
//
//  Created by cice on 23/5/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit
import MessageUI

class RYDescripcionAPPViewController: UIViewController {
    
    
    
    
    //MARK: - IBOUTLET
    
    
    @IBOutlet weak var myWebView: UIWebView!
    
    
    
    //MARK: - IBACTION
    
    
    @IBAction func volverACTION(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    //MARK: - IBACTION MAIL
    @IBAction func sendMailToSuportTeam(sender: AnyObject) {
        
        let mailComposeVC = configuredMailComposeVC()
        
        if MFMailComposeViewController.canSendMail(){
        
        presentViewController(mailComposeVC, animated: true, completion: nil)
        
        }else{
            showSendMailErrorAlertVC()
        }
        
    }
    
    //MARK: - UTILS
    
    func configuredMailComposeVC() -> MFMailComposeViewController{
    
    let mailComposeVC = MFMailComposeViewController()
    mailComposeVC.mailComposeDelegate = self
    mailComposeVC.setToRecipients(["rubenyubero.s@gmail.com"])
    mailComposeVC.setSubject("Esta es una prueba en clase")
    mailComposeVC.setMessageBody("Enviar una prueba de la app Enviando", isHTML: false)
        
        
    return mailComposeVC
    }
    
    func showSendMailErrorAlertVC(){
        
        let alertVC = UIAlertController(title: "ATENCIÓN", message: "EL MAIL NO SE HA PODIDO ENVIAR CORRECTAMENTE", preferredStyle: .Alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(alertVC, animated: true, completion: nil)
    
    
    }
    
    
    
    //MARK: - CICLO DE VIDA DEL VC
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let htmlFile =  NSBundle.mainBundle().pathForResource("target", ofType: "html"){
            let fileHtml = NSData(contentsOfFile: htmlFile)
            let baseURL = NSURL.fileURLWithPath(NSBundle.mainBundle().bundlePath)
            myWebView.loadData(fileHtml!, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            
        
        
        
        
        
        
        
        
        
        
        }
        
        

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


//MARK: - DELEGADO DE MFM
extension RYDescripcionAPPViewController : MFMailComposeViewControllerDelegate{

    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
            controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

