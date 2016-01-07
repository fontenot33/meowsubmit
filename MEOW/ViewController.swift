//
//  ViewController.swift
//  MEOW
//
//  Created by Ariana Fontenot on 1/7/16.
//  Copyright © 2016 Fontebot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let colorStruct = ColorWheel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var touch = UITapGestureRecognizer(target:self, action:"changeColor:")
        self.view.addGestureRecognizer(touch)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     func changeColor(sender: UIButton) {
        self.view.backgroundColor = colorStruct.randomColor()
        
    }

}

