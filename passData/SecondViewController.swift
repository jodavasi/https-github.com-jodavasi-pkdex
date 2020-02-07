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
    @IBOutlet weak var pkName: UILabel!
    @IBOutlet weak var pkImage: UIImageView!
    @IBOutlet weak var pkSummary: UITextView!
    @IBOutlet weak var tipeImg: UIImageView!
    
    var BulbasaurImg = UIImage(named: "Bulbasaur.png")
    var CharmanderImg = UIImage(named: "Charmander.png")
    var SquirtleImg = UIImage(named: "Squirtle.png")
    var grassImg = UIImage(named: "grass.png")
    var fireImg = UIImage(named: "fire.png")
    var waterImg = UIImage(named: "water.png")
        
    
    var pokedex = ["Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.","The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.","Squirtle's shell is not merely used for protection. The shell's rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds."]
    var data = ""
    var delegate: PassDataToVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pkName.text = data
        if(pkName.text == "Bulbasaur"){
            pkSummary.text = pokedex[0]
            pkImage.image = BulbasaurImg
            tipeImg.image = grassImg
            
            
        }else if(pkName.text == "Charmander"){
            pkSummary.text = pokedex[1]
            pkImage.image = CharmanderImg
            tipeImg.image = fireImg
            
        }else if(pkName.text == "Squirtle"){
            pkSummary.text = pokedex[2]
            pkImage.image = SquirtleImg
            tipeImg.image = waterImg
            
        }
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController
        navigationController?.pushViewController(vc!, animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    
    

}


