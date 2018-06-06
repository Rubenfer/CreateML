//
//  ViewController.swift
//  MyMLProject
//
//  Created by Ruben Fernandez on 06/06/2018.
//  Copyright © 2018 Ruben Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var size: UITextField!
    @IBOutlet var rooms: UITextField!
    @IBOutlet var price: UILabel!
    
    let model = PriceData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btn(_ sender: Any) {
        
        guard let value = try? model.prediction(rooms: Double(rooms.text!)!, size: Double(size.text!)!) else {
            fatalError("Error")
        }
        
        price.text = "\(value.price)"
        
    }
    
}

