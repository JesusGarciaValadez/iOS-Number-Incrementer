//
//  FirstViewController.swift
//  demo
//
//  Created by Jesús García Valadez on 09/08/15.
//  Copyright © 2015 Jesús García Valadez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var total: Int = 0, a_sumar: Int = 1

    func printTotal( total total: Int ) {
        self.label.text = "\( total )"
    }

    func obtainTextFieldValue() -> Int {
        let textField: String? = self.campo.text

        if let _ = textField{
            return Int( textField! )!
        } else {
            return 1
        }
    }

    @IBOutlet var label: UILabel!
    @IBOutlet var campo: UITextField!

    @IBAction func sumar(sender: UIButton) {
        a_sumar = obtainTextFieldValue()

        self.total += a_sumar

        self.printTotal(total: self.total )
    }

    @IBAction func restar(sender: UIButton) {
        a_sumar = obtainTextFieldValue()

        self.total -= a_sumar

        self.printTotal(total: self.total )
    }

    @IBAction func quitar_teclado(sender: UIButton) {
        self.campo.resignFirstResponder()
    }
}
