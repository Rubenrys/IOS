//
//  ViewController.swift
//  App_TableViewDemo
//
//  Created by cice on 8/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: - VARIABLES GLOBALES 
    
    let myArray = ["Enero", "Febrero" , "Marzo", "Abril"]
    
    
    
    //MARK: - IBOUTLET
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource, UITableViewDelegate{

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 500000
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = myTableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel?.text = "Ruben"
        return cell
    
    }
  


}
