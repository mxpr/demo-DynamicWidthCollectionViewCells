//
//  OptionSixViewController.swift
//  DynamicWidthCollectionViewCells
//
//  Created by Almas Daumov on 2/28/16.
//  Copyright © 2016 matrixprojects.net. All rights reserved.
//

import UIKit

class OptionSixViewController: UIViewController {
  @IBOutlet var collectionView: UICollectionView!
  
  struct Item {
    let name : String
  }
  
  var items = [Item]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView.registerNib(CollectionViewCell.nib, forCellWithReuseIdentifier: "cell")
    
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
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    collectionView.collectionViewLayout.invalidateLayout()
  }
}

extension OptionSixViewController: UICollectionViewDataSource {
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return items.count
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
    cell.textLabel.text = items[indexPath.item].name
    return cell
  }
}

extension OptionSixViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    return CGSizeMake(collectionView.frame.width, CGFloat(68))
  }
}