//
//  ViewController.swift
//  DynamicWidthCollectionViewCells
//
//  Created by Kassem Wridan on 07/02/2016.
//  Copyright © 2016 matrixprojects.net. All rights reserved.
//

import UIKit

class MyCollectionViewCell : UICollectionViewCell {
    
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
    
}

class ViewController : UIViewController {
    
    struct Item {
        let name : String
    }
    
    var items = [Item]()
    
    // MARK: Outlets
    
    @IBOutlet weak var flowLayout: FullWidthCellsFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        updateItems()
        collectionView.reloadData()
    }
    
    // MARK: Private
    
    private func updateItems() {
        items.removeAll()
        for i in 0...25 {
            items.append(Item(name: "Cell \(i)"))
        }
    }
    
}

extension ViewController : UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! MyCollectionViewCell
        
        cell.textLabel.text = items[indexPath.item].name
        
        return cell
    }
    
}

