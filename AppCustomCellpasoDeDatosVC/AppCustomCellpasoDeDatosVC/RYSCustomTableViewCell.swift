//
//  RYSCustomTableViewCell.swift
//  AppCustomCellpasoDeDatosVC
//
//  Created by cice on 15/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSCustomTableViewCell: UITableViewCell {
    
    
    //MARK: - IBOUTLET
    
    
    
    @IBOutlet weak var myPerfileIMG: UIImageView!
    @IBOutlet weak var myDateLBL: UILabel!
    @IBOutlet weak var myuserProfileLBL: UILabel!
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myPerfileIMG.layer.cornerRadius = myPerfileIMG.frame.width / 2
        myPerfileIMG.clipsToBounds = true

        
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
