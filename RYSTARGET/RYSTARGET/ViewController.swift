//
//  ViewController.swift
//  RYSTARGET
//
//  Created by cice on 23/5/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    //MARK: VARIABLES LOCALES GLOBALES
    
    var currentValue = 50
    
    var targetValue = 0
    
    var puntuacion = 0
    
    var ronda = 0

    //MARK: - IBOUTLET
    
    
    
    @IBOutlet weak var mySliderCustom: UISlider!
    
    @IBOutlet weak var myTargetValue: UILabel!
    
    @IBOutlet weak var myRondaLBL: UILabel!
    
    @IBOutlet weak var myPuntuacionLBL: UILabel!
    
    //MARK: IBACTION
    
    
    
    
    @IBAction func showAlertACTION(sender: AnyObject) {
        
        /*let diferencia : Int
        if currentValue > targetValue{
        diferencia = currentValue - targetValue
        }else if targetValue > currentValue{
        
        diferencia = targetValue - currentValue
        
        }else{
        
        diferencia = 0
        
        }
        
        }*/
        
        
        let diferencia = abs(targetValue - currentValue)
        var puntos = 100 - diferencia
        
        let title : String
        if diferencia == 0 {
            title = "Perfecto"
            puntos += 100
        }else if diferencia < 5{
        title = "Casi das en el blanco"
        puntos += 50
        
        }else if diferencia < 10{
            title = "Tienes que mejorar"
            puntos += 10
        
        }else{
        
        title = "No tienes punteria"
        
        }

       puntuacion += puntos
        
        
        /*let message = "El valor del slider es \(currentValue) \n y el valor del target es \(targetValue) \n y la diferencia es \(diferencia)"*/
        
        let message = "tu puntuacion es \(puntos)"
        
        
        
        let AlertVC = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        AlertVC.addAction(UIAlertAction(title: "Asombroso", style: .Default, handler: { action in
            
            self.starNewRound()
            self.updateLabels()
        }))
        presentViewController(AlertVC, animated: true, completion: nil)
        
    }
    
    
    @IBAction func sliderMovidoACTION(mySlider: UISlider) {
        
        
        
        currentValue = Int(mySlider.value)
        print("El slider tiene un valor de \(currentValue)")
    }
    
    
    
    @IBAction func resetGame(sender: AnyObject) {
        
        starNewGame()
        updateLabels()
    }
    
    
    //MARK -VIDA DEL VC
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starNewGame()
        updateLabels()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: -UTILS
    
    func starNewRound(){
        
        
        ronda += 1
        currentValue = 50
        targetValue = 1 + Int(arc4random_uniform(100))
        mySliderCustom.value = Float(currentValue)
    
    
    }
    
    
    

    func updateLabels(){
        
        myTargetValue.text = String(targetValue)
        myPuntuacionLBL.text = String(puntuacion)
        myRondaLBL.text = String(ronda) // "\(ronda)"
    
    
    }
    
    func starNewGame(){
    puntuacion = 0
    ronda = 0
    starNewRound()
    
    }

}

