//
//  ViewController.swift
//  SimpleToDoList
//
//  Created by James Browning on 2/12/17.
//  Copyright © 2017 James Browning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newItem: UIButton!
    @IBOutlet weak var addItem: UIButton!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var quantityTextField: UITextField!
    
    @IBAction func newList(_ sender: UIButton) {
        newItem.isEnabled = true
        addItem.isEnabled = true
        descriptionTextField.isEnabled = true
        quantityTextField.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

