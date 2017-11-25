//
//  ViewController.swift
//  AtSem
//
//  Created by Abby on 11/10/17.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var churchAddressTextField: UITextField!
    @IBOutlet weak var displayNameLabel: UILabel!
    @IBOutlet weak var displayAddressLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameTextField.delegate = self
        self.churchAddressTextField.delegate = self
        //        displayNameLabel = ""
        //        displayAddressLabel = ""
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: UITextFieldDelegate
    //Hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // Hide keyboard when user presses return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        displayNameLabel.text = nameTextField.text
        displayAddressLabel.text = churchAddressTextField.text
    }
    
    //MARK: Actions
    
    @IBAction func saveButton(_ sender: Any) {
        displayNameLabel.text = nameTextField.text!
        displayAddressLabel.text = churchAddressTextField.text!
        nameTextField.resignFirstResponder()
        churchAddressTextField.resignFirstResponder()
    }
    
}

