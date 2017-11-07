//
//  BasicLayerAnimationViewController.swift
//  AnimationCookbook
//
//  Created by Al Manigsaca on 11/6/17.
//  Copyright © 2017 axillon. All rights reserved.
//

import UIKit

class BasicLayerAnimationViewController: UIViewController {

    @IBOutlet weak var buttonAnimate: UIButton!
    @IBOutlet weak var buttonAnimateCopy: UIButton!
    @IBOutlet weak var buttonAnimateDelayed: UIButton!
    
    @IBOutlet weak var buttonAnimateFillmodeBackwards: UIButton!
    @IBOutlet weak var buttonAnimateFillmodeForwards: UIButton!
    @IBOutlet weak var buttonAnimateFillmodeBoth: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Animatable Properties
        // https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/AnimatableProperties/AnimatableProperties.html#//apple_ref/doc/uid/TP40004514-CH11-SW1
       
        // Animate X Position
        let basicAnimation       = CABasicAnimation(keyPath: "position.x")
        basicAnimation.toValue   = view.bounds.size.width/2
        basicAnimation.fromValue = -view.bounds.size.width/12
        basicAnimation.duration  = 2.0
        
        buttonAnimate.layer.add(basicAnimation, forKey: nil)
        buttonAnimateCopy.layer.add(basicAnimation, forKey: nil)
    
        // Delay start by 0.5
        basicAnimation.beginTime  = CACurrentMediaTime() + 2.0
        buttonAnimateDelayed.layer.add(basicAnimation, forKey: nil)
        
        // Animations must be removed from screen after execution, this is true by default
        // no need to to set this, just a reminder
        basicAnimation.isRemovedOnCompletion = true
        
        // With Fillmode Backwards (Displays the first frame of animation)
        basicAnimation.fillMode = kCAFillModeBackwards
        buttonAnimateFillmodeBackwards.layer.add(basicAnimation, forKey: nil)
        
        // With Fillmode Forwards (Displays the last frame of the animation)
        basicAnimation.fillMode = kCAFillModeForwards
        buttonAnimateFillmodeForwards.layer.add(basicAnimation, forKey: nil)
        
        // With Fillmode Both (Shows both the first fame and the last frame of the animation)
        basicAnimation.fillMode = kCAFillModeBoth
        buttonAnimateFillmodeBoth.layer.add(basicAnimation, forKey: nil)
        
    }
}

extension UIButton {
    override open func willMove(toSuperview newSuperview: UIView?) {
        super .willMove(toSuperview: newSuperview)

        self.layer.cornerRadius = self.bounds.height/2
        self.clipsToBounds = true
    }
}
