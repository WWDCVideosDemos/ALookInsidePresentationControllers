//
//  PresentedViewController.swift
//  ALookInsidePresentationControllers
//
//  Created by Simon on 16/2/28.
//  Copyright © 2016年 Simon. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .Plain, target: self, action: "alertPresentationHandle")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        print("presentingViewController: \(presentingViewController)") // root view controller
        
        print("presentatedViewController: \(presentedViewController)")  //nil
    }
    
    func alertPresentationHandle() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
