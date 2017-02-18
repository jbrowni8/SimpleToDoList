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
    
    @IBOutlet weak var list: UILabel!
    var listItems : String = ""
    
    @IBAction func descExit(_ sender: UITextField) {
        descriptionTextField.resignFirstResponder()
    }
    
    @IBAction func quanExit(_ sender: UITextField) {
        quantityTextField.resignFirstResponder()
        self.view.endEditing(true)
    }
    
    @IBAction func buttonClick(sender: UIButton) {
        
        let alertController = UIAlertController(title: "Error", message: "Insert an integer value in the quantity text field.", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "Close Alert", style: .default, handler: nil)
        
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func newList(_ sender: UIButton) {
        descriptionTextField.resignFirstResponder()
        quantityTextField.resignFirstResponder()
        listItems = ""
        descriptionTextField.text=""
        quantityTextField.text=""
        list.text = listItems
        newItem.isEnabled = true
        addItem.isEnabled = true
        descriptionTextField.isEnabled = true
        quantityTextField.isEnabled = true
    }
    
    @IBAction func addNewItem(_ sender: UIButton) {
        descriptionTextField.text = ""
    }
    
    @IBAction func addButton(_ sender: UIButton) {

        if nil != quantityTextField {
            if let quantity = Int(quantityTextField.text!) {
                if nil != descriptionTextField
                    && descriptionTextField.text != ""
                    && quantityTextField.text != "" {
                    listItems.append("\(descriptionTextField.text!) x \(quantity)\n")
                }
            } else {
                buttonClick(sender: sender)
            }
        }
        list.text=listItems
        descriptionTextField.text=""
        quantityTextField.text=""
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

