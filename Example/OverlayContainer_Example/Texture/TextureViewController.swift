//
//  TextureViewController.swift
//  OverlayContainer_Example
//
//  Created by Roberto Casula on 14/04/2019.
//  Copyright © 2019 Gaétan Zanella. All rights reserved.
//

import UIKit

#if canImport(AsyncDisplayKit)
import AsyncDisplayKit

class TextureViewController: ASViewController<ASTableNode>, ASTableDataSource {

    init() {
        let tableNode = ASTableNode(style: .plain)
        super.init(node: tableNode)
        tableNode.dataSource = self
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
        return {
            let cell = ASTextCellNode()
            cell.text = "\(indexPath.row)"
            return cell
        }
    }
}

#else
class TextureViewController: UIViewController { }
#endif
