//
//  ViewController.swift
//  Calculadora
//
//  Created by Maestro on 14/08/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var lblPorcentajeSeleccionado: UILabel!
    @IBOutlet weak var doValueChangePorcentajeSeleccionado: UISlider!
    @IBOutlet weak var doValueChangePrecio: UITextField!
    
    var precio = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doValueChangePorcentajeSeleccionado(sender: AnyObject) {
        lblPorcentajeSeleccionado.text = "\(doValueChangePorcentajeSeleccionado.value)%"
    }
    
    @IBAction func doValueChangePrecio(sender: AnyObject) {
       // precio = Double(doValueChangePrecio.value)
    }

}

