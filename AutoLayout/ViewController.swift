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
        self.view.addConstraint(NSLayoutConstraint(item: centerView, attribute: .Width, relatedBy: .Equal, toItem: self.view, attribute: .Width, multiplier: 0.5, constant: 0))
        
        // Half of parent height
        self.view.addConstraint(NSLayoutConstraint(item: centerView, attribute: .Height, relatedBy: .Equal, toItem: self.view, attribute: .Height, multiplier: 0.5, constant: 0))
        
        // Center horizontally
        self.view.addConstraint(NSLayoutConstraint(item: centerView, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1.0, constant: 0))
        
        // Center horizontally
        self.view.addConstraint(NSLayoutConstraint(item: centerView, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: 0))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

