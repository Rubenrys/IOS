//
//  RYSCochesModel.swift
//  App_TableViewDemo2.1
//
//  Created by cice on 8/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSCochesModel: NSObject {
    
    //MARK: - VARIABLES 
    
    var coche : String?
    var model : String?
    var image : UIImage?
    
    //MARK: INICIALIZADOR
    
    init(aName : String, aModel : String, aImage : UIImage) {
        coche.self = aName
        model.self = aModel
        image.self = aImage
        super.init()
    }
 
}
