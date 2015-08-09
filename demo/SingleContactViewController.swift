//
//  SingleContactViewController.swift
//  demo
//
//  Created by Jesús García Valadez on 09/08/15.
//  Copyright © 2015 Jesús García Valadez. All rights reserved.
//

import UIKit

class SingleContactViewController: UIViewController {

    var n: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.label.text = n
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alert(sender: UIButton) {
        let alert = UIAlertController( title: "Hey", message: "Dame 5 Estrellas", preferredStyle: UIAlertControllerStyle.Alert )
        alert.addAction( UIAlertAction( title: "Claro!", style: UIAlertActionStyle.Default, handler: nil ) )
        
        self.presentViewController( alert, animated: true, completion: nil )
    }

    @IBAction func loguea(sender: UIButton) {
        NSLog( "Hola Consola" )
    }

    @IBOutlet var label: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
