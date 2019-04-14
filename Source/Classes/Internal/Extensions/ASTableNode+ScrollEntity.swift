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
//        return panGestureRecognizer.yDirection == .up
    }

    public var isContentOriginInBounds: Bool {

        return contentOffset.y <= -contentInset.top
    }

    public func scrollToTop() {
        contentOffset.y = -contentInset.top
    }


}

#endif
