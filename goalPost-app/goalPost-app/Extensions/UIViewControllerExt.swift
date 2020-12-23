//
//  UIViewControllerExt.swift
//  goalPost-app
//
//  Created by Jacob Duell on 12/17/20.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.15
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController, _ previousViewController: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.15
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        
        //guard let presentedViewController = presentedViewController else { return }
        
        previousViewController.dismiss(animated: false) {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            viewControllerToPresent.modalPresentationStyle = .fullScreen
            self.present(viewControllerToPresent, animated: false, completion: nil)
        }
    }
    
    func dismissBoth(_ viewControllerToPresent: UIViewController) {
        guard let presentingViewController = presentingViewController else { return }
        presentingViewController.dismiss(animated: true, completion: nil)
    }
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.15
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
