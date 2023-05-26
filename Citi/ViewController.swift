//
//  ViewController.swift
//  Citi
//
//  Created by Jesus Gonzalez on 25/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var fechaTextField: UITextField!
    @IBOutlet weak var puestoTextField: UITextField!
    
    @IBOutlet weak var BtnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.addTarget(self, action: #selector(textFieldDidChange(_ :)), for: .editingChanged)
        fechaTextField.addTarget(self, action: #selector(textFieldDidChange(_ :)), for: .editingChanged)
        puestoTextField.addTarget(self, action: #selector(textFieldDidChange(_ :)), for: .editingChanged)
     
    }
    
    @objc func textFieldDidChange(_ textField: UITextField){
        
        let textName = nameTextField.text ?? ""
        let textFecha = fechaTextField.text ?? ""
        let textPuesto = puestoTextField.text ?? ""
        
        let validacion = !textName.isEmpty && !textFecha.isEmpty && !textPuesto.isEmpty
        
        if validacion{
            BtnRegister.backgroundColor = UIColor.blue
        }else{
            BtnRegister.backgroundColor = UIColor.darkGray
        }
        
        BtnRegister.isEnabled = validacion
        
    }

    @IBAction func sendData(_ sender: Any) {
        
        let nameString = nameTextField.text!
        let fechaString = fechaTextField.text!
        let puestoString = puestoTextField.text!
        
        if nameTextField.text == "" || fechaTextField.text == "" || puestoTextField.text == ""{
            print("Error")
        }else{
            print("success")
            let second = SecondViewController()
            second.data1 = nameString
            second.data2 = fechaString
            second.data3 = puestoString
            
            self.present(second,animated: true,completion: nil)
            
            
        }
    }
    
}

