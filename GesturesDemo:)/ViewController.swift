//
//  ViewController.swift
//  GesturesDemo:)
//
//  Created by NATHAN GEHRKE on 11/8/18.
//  Copyright © 2018 Nathan Gehrke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var blueUIview: UIView!
    @IBOutlet weak var yellowUIView: UIView!
    
    var isblue = true
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onTap(_ sender: Any) {
        if isblue == true {
    blueUIview.backgroundColor = yellowUIView.backgroundColor
        }else{
    blueUIview.backgroundColor = .blue
            
 }
isblue = !isblue
   
    
}
    
    @IBAction func onPan(_ sender: UIPanGestureRecognizer) {
    let point = sender.location(in: view)
yellowUIView.center = CGPoint(x: point.x , y: point.y)
     print(point)
        
    
    
    }
}

