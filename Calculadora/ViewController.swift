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
    @IBOutlet weak var doValueChangePorcentajeSeleccionado: UISlider!
    @IBOutlet weak var lblPorcentajeSeleccionado: UILabel!
    @IBOutlet weak var lblCantidadDePropina: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
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
        /*Mi metodo poco ortodoxo
         lblPorcentajeSeleccionado.text = "\(doValueChangePorcentajeSeleccionado.value)%"
        */
        //Calcular valores
        let totalCuenta = Double(txtPrecio.text!)
        let porcentajePropina = Int(doValueChangePorcentajeSeleccionado.value)
        let cantidadPropina = totalCuenta! * (Double(porcentajePropina) / 100)
        let totalAPagar = cantidadPropina + totalCuenta!
        
        //Establecer textos
        lblPorcentajeSeleccionado.text = "\(porcentajePropina)%"
        lblCantidadDePropina.text = "\(cantidadPropina)"
        lblTotal.text = "\(totalAPagar)"
        
    }
    
}

