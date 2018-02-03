//
//  SecondViewController.swift
//  Delegates-and-Protocols
//
//  Created by SpaGettys on 2018/02/03.
//  Copyright © 2018 SpaGettys. All rights reserved.
//

import UIKit

protocol CanReceive {
    
    func dataRecieved(data: String)
    
}

class SecondViewController: UIViewController {
    
    var delegate: CanReceive?
    
    var data = ""

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendDataBack(_ sender: Any) {
        delegate?.dataRecieved(data: textField.text!)
        
        //dismiss the SecondViewController
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
