//
//  Animator.swift
//  ALookInsidePresentationControllers
//
//  Created by Simon on 16/2/28.
//  Copyright © 2016年 Simon. All rights reserved.
//

import UIKit

class Animator: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 10.0
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
    }
}
