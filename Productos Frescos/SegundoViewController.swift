//
//  CustomerViewController.swift
//  Productos Frescos
//
//  Created by Guillermo Castillo on 9/8/15.
//  Copyright (c) 2015 Inacap. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController{
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
    
    
    @IBAction func volverAtras(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
}


