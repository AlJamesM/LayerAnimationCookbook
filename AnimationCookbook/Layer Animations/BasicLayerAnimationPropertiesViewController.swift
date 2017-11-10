//
//  BasicLayerAnimationPropertiesViewController.swift
//  AnimationCookbook
//
//  Created by Al Manigsaca on 11/6/17.
//  Copyright © 2017 axillon. All rights reserved.
//

import UIKit

class BasicLayerAnimationPropertiesViewController: UIViewController {

    @IBOutlet weak var buttonAnimateColor: UIButton!
    @IBOutlet weak var buttonAnimateOpacity: UIButton!
    @IBOutlet weak var buttonAnimateBorder: UIButton!
    @IBOutlet weak var buttonAnimateBounds: UIButton!
    @IBOutlet weak var buttonAnimateRotateZ: UIButton!
    @IBOutlet weak var buttonAnimateRotateX: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Animatable Properties
        // https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/AnimatableProperties/AnimatableProperties.html#//apple_ref/doc/uid/TP40004514-CH11-SW1
        
        // Animate backgroundColor
        let basicAnimationColor  = CABasicAnimation(keyPath: "backgroundColor")
        
        basicAnimationColor.fillMode = kCAFillModeBoth
        basicAnimationColor.fromValue = UIColor.red.cgColor
        basicAnimationColor.toValue   = UIColor.black.cgColor
        basicAnimationColor.duration  = 2.0
        basicAnimationColor.repeatCount = 1e100
        
        buttonAnimateColor.backgroundColor = UIColor.black
        buttonAnimateColor.layer.add(basicAnimationColor, forKey: nil)
        
        // Animate opacity
        let basicAnimationOpacity  = CABasicAnimation(keyPath: "opacity")
        
        basicAnimationOpacity.fillMode = kCAFillModeBoth
        basicAnimationOpacity.fromValue = 0
        basicAnimationOpacity.toValue   = 1.0
        basicAnimationOpacity.duration  = 2.0
        basicAnimationOpacity.repeatCount = 1e100
    
        buttonAnimateOpacity.layer.add(basicAnimationOpacity, forKey: nil)

        // Animate borderWidth
        let basicAnimationBorder  = CABasicAnimation(keyPath: "borderWidth")
        
        basicAnimationBorder.fillMode = kCAFillModeBoth
        basicAnimationBorder.fromValue = 20
        basicAnimationBorder.toValue   = 0
        basicAnimationBorder.duration  = 2.0
        basicAnimationBorder.repeatCount = 1e100
        
        buttonAnimateBorder.layer.borderColor = UIColor.white.cgColor
        buttonAnimateBorder.layer.add(basicAnimationBorder, forKey: nil)
    
        // Animate bounds
        let basicAnimationBounds  = CABasicAnimation(keyPath: "bounds")
        
        basicAnimationBounds.fillMode = kCAFillModeBoth
        basicAnimationBounds.fromValue = CGRect(x: 0, y: 0, width: 200, height: 100)
        basicAnimationBounds.toValue   = buttonAnimateBounds.bounds
        basicAnimationBounds.duration  = 2.0
        basicAnimationBounds.repeatCount = 1e100
        
        buttonAnimateBounds.layer.add(basicAnimationBounds, forKey: nil)
        
        // Animate rotate z
        let basicAnimationRotateZ  = CABasicAnimation(keyPath: "transform.rotation.z")
        
        basicAnimationRotateZ.fromValue = 0.0
        basicAnimationRotateZ.toValue = ((360.0 * .pi) / 180.0)
        basicAnimationRotateZ.duration = 2.0
        basicAnimationRotateZ.repeatCount = 1e100
        
        buttonAnimateRotateZ.layer.add(basicAnimationRotateZ, forKey: nil)
        
        // Animate rotate x
        let basicAnimationRotateX  = CABasicAnimation(keyPath: "transform.rotation.x")
        
        basicAnimationRotateX.fromValue = 0.0
        basicAnimationRotateX.toValue = ((360.0 * .pi) / 180.0)
        basicAnimationRotateX.duration = 2.0
        basicAnimationRotateX.repeatCount = 1e100
        
        buttonAnimateRotateX.layer.add(basicAnimationRotateX, forKey: nil)
        
    }
}
