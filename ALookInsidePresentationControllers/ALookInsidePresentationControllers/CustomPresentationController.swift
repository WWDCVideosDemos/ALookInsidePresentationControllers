//
//  CustomPresentationController.swift
//  ALookInsidePresentationControllers
//
//  Created by Simon on 16/2/28.
//  Copyright © 2016年 Simon. All rights reserved.
//

import UIKit

class CustomPresentationController: UIPresentationController {
    var dimingView : UIView!
    
    override init(presentedViewController: UIViewController, presentingViewController: UIViewController) {
        super.init(presentedViewController: presentedViewController, presentingViewController: presentingViewController)
    }
    
    override func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        return CGSizeMake(0, 0)
    }
    
    override func frameOfPresentedViewInContainerView() -> CGRect {
        return CGRect(x: 0, y: 0, width: 0, height: 0)
    }
    
    override func presentationTransitionWillBegin() {
        
    }
    
    override func dismissalTransitionWillBegin() {
        
    }
    
    override func containerViewDidLayoutSubviews() {
        
    }
    override func containerViewWillLayoutSubviews() {
    }
}
