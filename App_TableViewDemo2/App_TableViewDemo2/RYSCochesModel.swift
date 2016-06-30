//
//  RYSCochesModel.swift
//  App_TableViewDemo2
//
//  Created by cice on 8/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSCochesModel: NSObject {

    //DECLARAMOS NUESTRAS VARIABLES DEL MODELO
    
    var name : String?
    var color : String?
    
    //Inicializador designado /Constructor designado
    init(aName : String, aColor : String) {
        self.name = aName
        self.color = aColor
        super.init()
    }
    
    
    
    
    
}
