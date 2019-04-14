//
//  UIScrollViiew+Utils.swift
//  Pods
//
//  Created by Gaétan Zanella on 28/11/2018.
//

import UIKit

extension UIScrollView {

    public var scrollsUp: Bool {
        return panGestureRecognizer.yDirection == .up
    }

    public var isContentOriginInBounds: Bool {
        return contentOffset.y <= -contentInset.top
    }

    public func scrollToTop() {
        contentOffset.y = -contentInset.top
    }
}
