//
//  ViewController.swift
//  ColorMaker_Slider
//
//  Created by David Miller on 1/10/16.
//  Copyright © 2016 LM Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redText: UITextField!
    @IBOutlet weak var greenText: UITextField!
    @IBOutlet weak var blueText: UITextField!
    
    @IBOutlet weak var colorView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pickColor() {
        
        redText.text = String(Int(redSlider.value))
        greenText.text = String(Int(greenSlider.value))
        blueText.text = String(Int(blueSlider.value))
        
        let r: CGFloat = CGFloat(redSlider.value/255)
        let g: CGFloat = CGFloat(greenSlider.value/255)
        let b: CGFloat = CGFloat(blueSlider.value/255)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
        
    }


}

