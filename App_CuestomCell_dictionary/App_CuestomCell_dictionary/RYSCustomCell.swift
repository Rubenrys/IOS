//
//  RYSCustomCell.swift
//  App_CuestomCell_dictionary
//
//  Created by cice on 13/6/16.
//  Copyright © 2016 rys. All rights reserved.
//

import UIKit

class RYSCustomCell: UITableViewCell {


    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var ApellidosLBL: UILabel!
    @IBOutlet weak var myDescripcionLBL: UILabel!
    @IBOutlet weak var myImageIV: UIImageView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
