//
//  ViewController.swift
//  passData
//
//  Created by Daniel Vargas on 1/25/20.
//  Copyright © 2020 jodavasi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var pokedex = ["Bulbasaur","Charmander","Squirtle"]
    //code here!!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func BulbasaurClicked(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.data = pokedex[0]
        vc?.delegate = self as PassDataToVC
        navigationController?.pushViewController(vc!, animated: true)
    
    
    }
    
    @IBAction func CharmanderClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.data = pokedex[1]
        vc?.delegate = self as PassDataToVC
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func SquirtleClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.data = pokedex[2]
        vc?.delegate = self as PassDataToVC
        navigationController?.pushViewController(vc!, animated: true)
    }
    


}

extension FirstViewController: PassDataToVC{
    
    func passData(str: String) {
        
    }
}

