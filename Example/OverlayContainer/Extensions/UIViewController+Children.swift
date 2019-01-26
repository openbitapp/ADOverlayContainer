//
//  UIViewController+Children.swift
//  OverlayContainer_Example
//
//  Created by Gaétan Zanella on 29/11/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

extension UIViewController {
    func addChild(_ child: UIViewController, in containerView: UIView) {
        guard containerView.isDescendant(of: view) else { return }
        addChildViewController(child)
        containerView.addSubview(child.view)
        child.view.pinToSuperview()
        child.didMove(toParentViewController: self)
    }

    func removeChild(_ child: UIViewController) {
        child.willMove(toParentViewController: nil)
        child.view.removeFromSuperview()
        child.removeFromParentViewController()
    }
}
