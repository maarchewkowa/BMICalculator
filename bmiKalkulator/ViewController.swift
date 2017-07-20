//
//  ViewController.swift
//  bmiKalkulator
//
//  Created by Karolina Beata Natalia Guzewska on 20.07.2017.
//  Copyright © 2017 Karolina Beata Natalia Guzewska. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    @IBOutlet var wagaLabel: UITextField!
    @IBOutlet var wzrostLabel: UITextField!
    @IBOutlet var bmiLabel: UILabel!

    @IBAction func obliczButton(_ sender: Any) {
      
        let waga = Float(wagaLabel.text!)
        let wzrost = Float(wzrostLabel.text!)
        
        let bmi = waga! / (wzrost!*wzrost!)
        
        bmiLabel.text = String(bmi)
        
        if bmi > 24.9 {
            emojiImage.image = UIImage (named: "zle")
        }
        else if bmi < 18.5
        {
            emojiImage.image = UIImage (named: "niedowaga")
        }
        else
        {
            emojiImage.image = UIImage (named: "dobrze")
        }
        
    }
    
    @IBOutlet var emojiImage: UIImageView!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

