//
//  CollectionViewCell.swift
//  DynamicWidthCollectionViewCells
//
//  Created by Kassem Wridan on 28/02/2016.
//  Copyright © 2016 matrixprojects.net. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.grayColor().CGColor
        layer.borderWidth = 2.0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        textLabel.text = nil
    }
    
    // MARK: Helpers
    static var nib : UINib  {
        return UINib(nibName: "CollectionViewCell", bundle: NSBundle(forClass: self))
    }
}
