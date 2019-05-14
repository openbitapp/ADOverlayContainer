//
//  ASCollectionNode+ScrollEntity.swift
//  OverlayContainer
//
//  Created by Roberto Casula on 26/04/2019.
//  Copyright © 2019 Gaétan Zanella. All rights reserved.
//

import Foundation

import Foundation

#if canImport(AsyncDisplayKit)

import AsyncDisplayKit

extension ASCollectionNode: ScrollEntity {
    public var gestureRecognizers: [UIGestureRecognizer]? {
        return self.view.gestureRecognizers
    }

    public var scrollsUp: Bool {
        return self.view.panGestureRecognizer.yDirection == .up
    }

    public var isContentOriginInBounds: Bool {

        return contentOffset.y <= -contentInset.top
    }

    public func scrollToTop() {
        contentOffset.y = -contentInset.top
    }


}

#endif
