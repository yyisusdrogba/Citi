//
//  SecondViewController.swift
//  Citi
//
//  Created by Jesus Gonzalez on 25/05/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var nameData: UILabel!
    @IBOutlet weak var fechaData: UILabel!
    @IBOutlet weak var puestoData: UILabel!
    
    var data1: String?
    var data2: String?
    var data3: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let dataDesempaquetada = data1{
            nameData.text = dataDesempaquetada
        }
        
        if let dataDesempaquetada2 = data2{
            fechaData.text = dataDesempaquetada2
        }
        
        if let dataDesempaquetada3 = data3{
            puestoData.text = dataDesempaquetada3
        }
        
    }
    
    @IBAction func regresarBtn(_ sender: UIButton) {
        dismiss(animated: true)
    }
}



