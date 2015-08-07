//
//  ViewController.swift
//  AutoLayout
//
//  Created by Nick Chen on 8/6/15.
//  Copyright © 2015 TalentSpark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = UIView()
        contentView.backgroundColor = UIColor.grayColor()
        self.view = contentView
        
        let centerView = UIView()
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.backgroundColor = UIColor.blackColor()
        self.view.addSubview(centerView)
        
        // Half of parent width
        let halfWidth = centerView.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.5)
        
        // Half of parent height
        let halfHeight = centerView.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
        
        // Center horizontally
        let centerX = centerView.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor)
        
        // Center vertically
        let centerY = centerView.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor)
        
        NSLayoutConstraint.activateConstraints([halfWidth, halfHeight, centerX, centerY])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

