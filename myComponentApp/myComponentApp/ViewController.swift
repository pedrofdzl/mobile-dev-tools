//
//  ViewController.swift
//  myComponentApp
//
//  Created by Alumno on 12/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segundoTermino: UITextField!
    @IBOutlet weak var primerTermino: UITextField!
    
    @IBAction func sumarButton(_ sender: Any) {
        let a = Float(primerTermino.text ?? "0")
        let b = Float(segundoTermino.text ?? "0")
        var mensaje:String = "Favor de llenar ambos campos"
        if(a != nil && b != nil){
            let res = (a ?? 0)+(b ?? 0)
            mensaje = String(res)
        }
        MostrarAlerta(mensaje: mensaje, titulo: "Resultado")
    }
    @IBAction func restarButton(_ sender: Any) {
        let a = Float(primerTermino.text ?? "0")
        let b = Float(segundoTermino.text ?? "0")
        var mensaje:String = "Favor de llenar ambos campos"
        if(a != nil && b != nil){
            let res = (a ?? 0)-(b ?? 0)
            mensaje = String(res)
        }
        MostrarAlerta(mensaje: mensaje, titulo: "Resultado")
    }
    @IBAction func multiplicarButton(_ sender: Any) {
        let a = Float(primerTermino.text ?? "0")
        let b = Float(segundoTermino.text ?? "0")
        var mensaje:String = "Favor de llenar ambos campos"
        if(a != nil && b != nil){
            let res = (a ?? 0)*(b ?? 0)
            mensaje = String(res)
        }
        MostrarAlerta(mensaje: mensaje, titulo: "Resultado")
    }
    @IBAction func dividirButton(_ sender: Any) {
        let a = Float(primerTermino.text ?? "0")
        let b = Float(segundoTermino.text ?? "0")
        var mensaje:String = "Favor de llenar ambos campos"
        if(a != nil && b != nil && b != 0){
            let res = (a ?? 0)/(b ?? 1)
            mensaje = String(res)
        }
        if(b == 0){
            mensaje = "No se puede dividir entre 0"
        }
        MostrarAlerta(mensaje: mensaje, titulo: "Resultado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.hideKeyboardWhenTappedAround()
    }

    func MostrarAlerta(mensaje: String, titulo: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
}

// Put this piece of code anywhere you like
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
