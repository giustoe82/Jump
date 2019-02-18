//
//  ViewController.swift
//  Jump
//
//  Created by Sten R Kaiser on 2018-08-27.
//  Copyright © 2018 Kaiser&Kaiser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var jumpTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIDevice().userInterfaceIdiom == .phone {
            if UIScreen.main.nativeBounds.height == 2436  {
               let topInsets =  UIApplication.shared.delegate?.window??.safeAreaInsets.top
                if let top = topInsets, Float(top) > 0 {
                    jumpTopConstraint.constant = 40
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

