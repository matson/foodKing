//
//  ViewController.swift
//  foodKing
//
//  Created by Tracy Adams on 4/26/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodView: UIImageView!
   
    @IBOutlet weak var foodLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func foodButton(_ sender: UIButton) {
        
        //pictures
        let hamburger = UIImage(named: "hamburger")!
        let pasta = UIImage(named: "spaguetti")!
        let taco = UIImage(named: "taco")!
        let japanese = UIImage(named: "ramen")!
        
        
        //create a dict to store values:
        let foodDict = ["Americana" : hamburger,"Japanese": japanese,"Mexican": taco, "Italian":pasta]
       
        let chosenDict = foodDict.randomElement()!
        foodLabel.text = chosenDict.key
        foodView.image = chosenDict.value
                                  
        
    }
    
}

