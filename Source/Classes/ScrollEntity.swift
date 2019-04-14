//
//  ScrollEntity.swift
//  OverlayContainer
//
//  Created by Roberto Casula on 14/04/2019.
//  Copyright © 2019 Gaétan Zanella. All rights reserved.
//

import UIKit

public protocol ScrollEntity: class {

    var gestureRecognizers: [UIGestureRecognizer]? { get }

    var scrollsUp: Bool { get }

    var isContentOriginInBounds: Bool { get }

    func scrollToTop()
}
