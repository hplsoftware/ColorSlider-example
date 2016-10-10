//
//  ViewController.swift
//  ColorSliderApp
//
//  Created by Rob Sutherland on 2016-09-24.
//  Copyright © 2016 HP Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeColorComponent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redSlider == nil {
            return
        }
        
        let fr: Float = self.redSlider.value
        let cgfr: CGFloat = CGFloat(fr)
        
        let fb: Float = self.blueSlider.value
        let cgfb: CGFloat = CGFloat(fb)
        
        let fg: Float = self.greenSlider.value
        let cgfg: CGFloat = CGFloat(fg)

        
//        let r: CGFloat = self.redSlider.value ? 1 : 0
//        let g: CGFloat = self.greenSlider.on ? 1 : 0
//        let b: CGFloat = self.blueSlider.on ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: cgfr, green: cgfg, blue: cgfb, alpha: 1)
    }
    
}

