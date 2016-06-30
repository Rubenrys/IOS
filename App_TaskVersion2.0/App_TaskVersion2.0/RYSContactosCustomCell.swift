//
//  RYSContactosCustomCell.swift
//  App_TaskVersion2.0
//
//  Created by cice on 27/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSContactosCustomCell: UITableViewCell {
    
    
    //MARK: - IBOUTLET
    
    
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!
    @IBOutlet weak var myImagenContactoIV: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myImagenContactoIV.layer.cornerRadius = myImagenContactoIV.frame.width/6
        myImagenContactoIV.clipsToBounds = true
        myImagenContactoIV.layer.borderWidth.distanceTo(4)
        
           }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
