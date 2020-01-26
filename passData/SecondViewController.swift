//
//  SecondViewController.swift
//  passData
//
//  Created by Daniel Vargas on 1/25/20.
//  Copyright © 2020 jodavasi. All rights reserved.
//

import UIKit



protocol PassDataToVC{
    func passData(str:String)
    
}

class SecondViewController: UIViewController {
    @IBOutlet weak var txtField2: UITextField!
    var data = ""
    var delegate: PassDataToVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtField2.text = data

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickedBack(_ sender: Any) {
        delegate.passData(str: txtField2.text!)
        navigationController?.popViewController(animated: true)
        
    }
    

}
