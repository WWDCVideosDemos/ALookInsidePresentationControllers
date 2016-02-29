//
//  ViewController.swift
//  ALookInsidePresentationControllers
//
//  Created by Simon on 16/2/28.
//  Copyright © 2016年 Simon. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(self.navigationController)
        print(self.parentViewController)//nil
        transitioningDelegate = self
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     Alert Presentation
     
     - parameter sender:
     */
    @IBAction func presentAlert(sender: AnyObject) {
        let alertController = UIAlertController(title: "Warn", message: "It's from UIAlertController", preferredStyle: .Alert)
        
        alertController.addAction(UIAlertAction(title: "ButtonA", style: .Default, handler: { (action) -> Void in
            print("ButtonA clicked")
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .Destructive, handler: { (action) -> Void in
            print("Cancel Button clicked")
        }))
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    /**
     Popver Presentation
     
     - parameter sender:
     */
    @IBAction func popverItemHandle(sender: AnyObject) {
        let presentedVC = PresentedViewController()
        presentedVC.view.backgroundColor = UIColor.grayColor()
        
        presentedVC.modalPresentationStyle = .Popover
        
        let popoverController =  presentedVC.popoverPresentationController
        popoverController?.backgroundColor = UIColor.lightGrayColor()
        popoverController?.permittedArrowDirections = .Any
        popoverController?.barButtonItem = sender as? UIBarButtonItem

        popoverController?.delegate = self
        presentViewController(presentedVC, animated: true, completion: nil)
        
    }
    
    @IBAction func unwindViewControllerForSegue(segue: UIStoryboardSegue) {
        print("unwinding")
    }
    

}

//MARK: - UIPopoverPresentationControllerDelegate
extension ViewController:UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.FullScreen
    }
    
    func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        // 用UINavigationController将content控制器包装起来,方便dismiss.
        return UINavigationController(rootViewController: controller.presentedViewController)
    }
}

extension ViewController:UIViewControllerTransitioningDelegate {
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return Animator()
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return Animator()
    }
    
    func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController? {

        // modalPresentationStyle = .Custom
        let p = CustomPresentationController(presentedViewController: presented, presentingViewController: presenting)
        
        return p
    }
}


