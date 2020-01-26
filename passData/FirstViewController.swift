//
//  ViewController.swift
//  passData
//
//  Created by Daniel Vargas on 1/25/20.
//  Copyright © 2020 jodavasi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func clicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.data = txtField.text!
        vc?.delegate = self as PassDataToVC
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    

}

extension FirstViewController: PassDataToVC{
    
    func passData(str: String) {
        txtField.text = str
    }
}

