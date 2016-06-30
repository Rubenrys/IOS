//
//  RYSNuevaTareaViewController.swift
//  App_TaskVersion2.0
//
//  Created by cice on 29/6/16.
//  Copyright © 2016 Cice. All rights reserved.
//

import UIKit

class RYSNuevaTareaViewController: UIViewController {
    
    //MARK: - VARIABLES LOCALES GLOBALES
    
    var arrayPrioridad = ["Alta", "Media - Alta", "Media", "Baja", "Sin prioridad"]
    
    
    
    //MARK: - IBOUTLET
    
    @IBOutlet weak var myNuevaTareaTF: UITextField!
    
    
    @IBOutlet weak var myImageNuevaTareaIV: UIImageView!
    
    @IBOutlet weak var myPrioridadNuevaTareaTF: UITextField!
    
    @IBOutlet weak var mySalvrTareaButton: UIButton!
    
    @IBOutlet weak var myCategoriaButton: UIButton!
    
    @IBOutlet weak var myFechaNuevaTareaTF: UITextField!

    @IBOutlet weak var myPresentaNuevaCategoriaLBL: UILabel!
    @IBOutlet weak var myDescripcionNuevaTareaTV: UITextView!
    
    //MARK: - IBACTION
    
    
    @IBAction func showDatePickerV(sender: UITextField) {
        
        
        let datePickerV = UIDatePicker()
        datePickerV.datePickerMode = .DateAndTime
        sender.inputView = datePickerV
        datePickerV.addTarget(self, action: #selector(RYSNuevaTareaViewController.datePickerValueChanged(_:)), forControlEvents: .ValueChanged)

        
        
    }
    
    @IBAction func cierraTextField(sender: AnyObject) {
        
        myNuevaTareaTF.resignFirstResponder()
    }
    
    
    @IBAction func salvarinfoNSUserdefaults(sender: AnyObject) {
            
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Redondeamos los botones
        myCategoriaButton.layer.cornerRadius = myCategoriaButton.frame.width/16
        mySalvrTareaButton.layer.cornerRadius = mySalvrTareaButton.frame.width/20
        
        //redondear y dar color al borde de la imagen
        myImageNuevaTareaIV.layer.cornerRadius = myImageNuevaTareaIV.frame.width/8
        myImageNuevaTareaIV.layer.borderColor = UIColor.blackColor().CGColor
        myImageNuevaTareaIV.layer.borderWidth = 1.5
        
        //AQUI HABILITAMOS LA IMAGEN PARA EJECUTE UNA ACCION
        
        myImageNuevaTareaIV.userInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(RYSNuevaTareaViewController.actionGesture(_:) ))
        
        //Aqui
        myImageNuevaTareaIV.addGestureRecognizer(tapGesture)
        
        
        //aqui creo el pickerview
        let pickerView = UIPickerView()
        pickerView.delegate = self
        myPrioridadNuevaTareaTF.inputView = pickerView
        myPrioridadNuevaTareaTF.text = arrayPrioridad[0]

        // Do any additional setup after loading the view.
        
        let toolbar = UIToolbar(frame: CGRectMake(0,0,0,40))
        toolbar.barStyle = UIBarStyle.Black
        toolbar.tintColor = UIColor.whiteColor()
        toolbar.backgroundColor = UIColor.blackColor()
        
        //aqui creamos el botton con el praton de diseño TARGET /ACTION
        let closeToolBarButton = UIBarButtonItem(title: "cerrar", style: .Done, target: self, action: #selector(RYSNuevaTareaViewController.closeButtonAction(_:)))

        //Aqui asignamos al toolbar el array de botones
        toolbar.items = [closeToolBarButton]
        //Aqui asignmamos dicho toolbar como un accesorio del textfield de prioridad
        myPrioridadNuevaTareaTF.inputAccessoryView = toolbar
        
        fechapordefecto()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - UTILS
    //TODO: -GESTO de RECONOCIMIENTO
    
    func actionGesture(tapGesture : UITapGestureRecognizer){
    pickerPhoto()
        
    }
    
    
    func closeButtonAction(sender : UITextView){
    
    myPrioridadNuevaTareaTF.resignFirstResponder()
    
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.myDescripcionNuevaTareaTV.endEditing(true)
    }
    
    
    func  datePickerValueChanged(sender : UIDatePicker) {
        
        let dateFormater = NSDateFormatter()
        dateFormater.dateStyle = .LongStyle
        dateFormater.timeStyle = .LongStyle
        myFechaNuevaTareaTF.text = dateFormater.stringFromDate(sender.date)
    }
    
    func fechapordefecto(){
    
        let dateFormater = NSDateFormatter()
        dateFormater.dateStyle = .LongStyle
        dateFormater.timeStyle = .LongStyle
        myFechaNuevaTareaTF.text = dateFormater.stringFromDate(NSDate())

    
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

//MARK: - DELEGATE UIIMAGEPICKER / PHOTO
extension RYSNuevaTareaViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func pickerPhoto(){
        
        if UIImagePickerController.isSourceTypeAvailable(.Camera){
            
            //metodo para el menu de la photo
            showPhotoMenu()
        }else{
            choosePhotoFromLibrary()
            
        }
    }
    
    func  showPhotoMenu(){
        
        let alertVC = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        let cancelAction = UIAlertAction(title: "cancelar", style: .Cancel, handler: nil)
        let takePhotoAction = UIAlertAction(title: "Tomar Foto", style: .Default) { Void in
            self.takePhotowithCamera()
        }
        let chooseFromLibraryAtion = UIAlertAction(title: "escoge de la libreria", style: .Default) { Void in
            self.choosePhotoFromLibrary()
        }
        alertVC.addAction(cancelAction)
        alertVC.addAction(takePhotoAction)
        alertVC.addAction(chooseFromLibraryAtion)
        
        presentViewController(alertVC, animated: true, completion: nil)
        
        
        
    }
    
    func takePhotowithCamera(){
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .Camera
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
        
    }
    
    func choosePhotoFromLibrary(){
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .PhotoLibrary
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        myImageNuevaTareaIV.image = image
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
}
extension RYSNuevaTareaViewController : UIPickerViewDataSource, UIPickerViewDelegate{
    
    
        func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          return arrayPrioridad.count
        }
        
        func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return arrayPrioridad[row]
    }
        
        func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            myPrioridadNuevaTareaTF.text = arrayPrioridad[row]
    }

    
    
    
    
}

