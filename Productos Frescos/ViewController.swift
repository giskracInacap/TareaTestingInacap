//
//  ViewController.swift
//  Productos Frescos
//
//  Created by Guillermo Castillo on 9/1/15.
//  Copyright (c) 2015 Inacap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    

    var users = [User]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //inicializamods los usuarios disponibles
        users += ([User(id:1, name:"jose pedro", user:"jose", pass:"jose"),User(id:2, name:"juan jose", user:"juan", pass:"juan")])
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func limpiar(sender: UIButton) {
        
        txtUser.text = ""
        txtPass.text = ""
        
    }
    
    //ejecutamos la valsidacion de los usuarios
    @IBAction func setEntrar(sender: AnyObject) {
        
        var userFound:Bool
        userFound = false

        
        //seccion de validacion de usuario
        for user in users {
            
            if user.getuser() == txtUser.text && user.getPass() == txtPass.text{
                userFound = true
                let nextView = self.storyboard?.instantiateViewControllerWithIdentifier("segunda") as! SegundoViewController
                self.navigationController?.showViewController(nextView, sender: sender)
            }
            
        }
        
        
        if userFound == false {
            let alertController = UIAlertController(title: "Error", message:
                "El usuario o la clave es incorrecta.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }

    }

}

