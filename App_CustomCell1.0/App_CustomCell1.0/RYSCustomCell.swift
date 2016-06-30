//
//  RYSCustomCell.swift
//  App_CustomCell1.0
//
//  Created by cice on 13/6/16.
//  Copyright © 2016 rys. All rights reserved.
//

import UIKit

class RYSCustomCell: UITableViewCell {
    
    
    //MARK: - IBOUTLET
    
    
    @IBOutlet weak var myimagerofileIV: UIImageView!
    @IBOutlet weak var myUsernameTwitterLBL: UILabel!
    @IBOutlet weak var myCommentStringLBL: UILabel!
    @IBOutlet weak var myDescriptionLBL: UILabel!
    @IBOutlet weak var myDatePostLBL: UILabel!
    @IBOutlet weak var myShareStringLBL: UILabel!
    @IBOutlet weak var myLikeStringLBL: UILabel!
    @IBOutlet weak var myPostImageLBL: UIImageView!
    @IBOutlet weak var myLastNameuserLBL: UILabel!
    @IBOutlet weak var myNameUSerLBL: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myimagerofileIV.layer.cornerRadius = myimagerofileIV.frame.width / 2
        myimagerofileIV.clipsToBounds = true
        
        
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
