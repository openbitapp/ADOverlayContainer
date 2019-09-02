//
//  ASTableNode+ScrollEntity.swift
//  OverlayContainer
//
//  Created by Roberto Casula on 14/04/2019.
//  Copyright © 2019 Gaétan Zanella. All rights reserved.
//

import Foundation

#if canImport(AsyncDisplayKit)

import AsyncDisplayKit

extension ASTableNode: ScrollEntity {
    public var gestureRecognizers: [UIGestureRecognizer]? {
        return self.view.gestureRecognizers
    }

    public var scrollsUp: Bool {
        return self.view.panGestureRecognizer.yDirection == .up
    }

//    public var isContentOriginInBounds: Bool {
//
//        return contentOffset.y <= -contentInset.top
//    }
//
//    public func scrollToTop() {
//        contentOffset.y = -contentInset.top
//    }

    public var isContentOriginInBounds: Bool {
        return contentOffset.y <= -oc_adjustedContentInset.top
    }

    public func scrollToTop() {
        contentOffset.y = -oc_adjustedContentInset.top
    }
}

extension ASTableNode {

    var oc_adjustedContentInset: UIEdgeInsets {

        if #available(iOS 11.0, *) {
            return self.view.adjustedContentInset
        } else {
            // Fallback on earlier versions
            return self.contentInset
        }
    }
}

#endif
