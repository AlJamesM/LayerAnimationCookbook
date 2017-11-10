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
    @IBOutlet weak var buttonAnimateRotate: UIButton!
    
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
        basicAnimationColor.duration  = 1.0
        
        buttonAnimateColor.backgroundColor = UIColor.black
        buttonAnimateColor.layer.add(basicAnimationColor, forKey: nil)
        
        // Animate opacity
        let basicAnimationOpacity  = CABasicAnimation(keyPath: "opacity")
        
        basicAnimationOpacity.fillMode = kCAFillModeBoth
        basicAnimationOpacity.beginTime  = CACurrentMediaTime() + 1.0
        basicAnimationOpacity.fromValue = 0
        basicAnimationOpacity.toValue   = 1.0
        basicAnimationOpacity.duration  = 1.0
    
        buttonAnimateOpacity.layer.add(basicAnimationOpacity, forKey: nil)

        // Animate borderWidth
        let basicAnimationBorder  = CABasicAnimation(keyPath: "borderWidth")
        
        basicAnimationBorder.fillMode = kCAFillModeBoth
        basicAnimationBorder.beginTime  = CACurrentMediaTime() + 2.0
        basicAnimationBorder.fromValue = 20
        basicAnimationBorder.toValue   = 0
        basicAnimationBorder.duration  = 1.0
        basicAnimationBorder.repeatCount = 1e100
        
        buttonAnimateBorder.layer.borderColor = UIColor.white.cgColor
        buttonAnimateBorder.layer.add(basicAnimationBorder, forKey: nil)
    
        // Animate borderWidth
        let basicAnimationBounds  = CABasicAnimation(keyPath: "bounds")
        
        basicAnimationBounds.fillMode = kCAFillModeBoth
        basicAnimationBounds.beginTime  = CACurrentMediaTime() + 3.0
        basicAnimationBounds.fromValue = CGRect(x: 0, y: 0, width: 200, height: 100)
        basicAnimationBounds.toValue   = buttonAnimateBounds.bounds
        basicAnimationBounds.duration  = 1.0
        
        buttonAnimateBounds.layer.add(basicAnimationBounds, forKey: nil)
        
        // Animate Rotate
        let basicAnimationRotate  = CABasicAnimation(keyPath: "transform.rotation.z")
        
        basicAnimationRotate.fromValue = 0.0
        basicAnimationRotate.toValue = ((360.0 * .pi) / 180.0)
        basicAnimationRotate.duration = 2.0
        basicAnimationRotate.repeatCount = 1e100
        
        buttonAnimateRotate.layer.add(basicAnimationRotate, forKey: nil)
    }
}
