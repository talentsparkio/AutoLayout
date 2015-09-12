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
        view = contentView
        
        let centerView = UIView()
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.backgroundColor = UIColor.blackColor()
        view.addSubview(centerView)
        
        // Half of parent width
        let halfWidth = centerView.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.5)
        
        // Half of parent height
        let halfHeight = centerView.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 0.5)
        
        // Center horizontally
        let centerX = centerView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor)
        
        // Center vertically
        let centerY = centerView.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor)

        let redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = UIColor.redColor()
        centerView.addSubview(redView)

        // 10% of parent width
        let redWidth = redView.widthAnchor.constraintEqualToAnchor(centerView.widthAnchor, multiplier: 0.1)

        // 10% of parent height
        let redHeight = redView.heightAnchor.constraintEqualToAnchor(centerView.heightAnchor, multiplier: 0.1)

        let redX = centerView.leftAnchor.constraintEqualToAnchor(redView.leftAnchor)

        let redY = centerView.topAnchor.constraintEqualToAnchor(redView.topAnchor)

        NSLayoutConstraint.activateConstraints([halfWidth, halfHeight, centerX, centerY, redWidth, redHeight, redX, redY])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

