//
//  ViewController.swift
//  Delegates-and-Protocols
//
//  Created by SpaGettys on 2018/02/03.
//  Copyright © 2018 SpaGettys. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeToBlue(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }

    @IBAction func sendButtonPressed(_ sender: Any) {
        // Invoke our segue.
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    // this function gets executed right after performSegue() gets run.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            //assign our self as the delegate of the SecondVeiwController, so we can receive data back.
            secondVC.delegate = self
        }
    }
    
    func dataRecieved(data: String) {
        label.text = data
    }
    
}

