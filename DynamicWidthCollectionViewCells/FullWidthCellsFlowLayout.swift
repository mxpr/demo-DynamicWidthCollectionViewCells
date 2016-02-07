//
//  FullWidthCellsFlowLayout.swift
//  DynamicWidthCollectionViewCells
//
//  Created by Kassem Wridan on 07/02/2016.
//  Copyright © 2016 matrixprojects.net. All rights reserved.
//

import Foundation
import UIKit

class FullWidthCellsFlowLayout : UICollectionViewFlowLayout {

    func fullWidth(forBounds bounds:CGRect) -> CGFloat {
        
        let contentInsets = self.collectionView!.contentInset
        
        return bounds.width - sectionInset.left - sectionInset.right - contentInsets.left - contentInsets.right
    }
    
    // MARK: Overrides
    
    override func prepareLayout() {
        itemSize.width = fullWidth(forBounds: collectionView!.bounds)
        super.prepareLayout()
    }
    
    override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
        if !CGSizeEqualToSize(newBounds.size, collectionView!.bounds.size) {
            itemSize.width = fullWidth(forBounds: newBounds)
            return true
        }
        return false
    }
}