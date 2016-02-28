# Demo - Dynamic Width CollectionView cells

A demo project for achieving full width UICollectionView cells (like UITableView).

Based on the write up in [this blog post](http://www.matrixprojects.net/p/uicollectionviewcell-dynamic-width/)

# Options

### Option 5: Flow Layout Subclass - modifying item size

- A subclass of `UICollectionViewFlowLayout` is used
- The subclass modifies `itemSize`'s `width` property on bounds change

### Option 6: Use "viewWillLayoutSubviews"

- Invalidates layout in "viewWillLayoutSubviews"
- Calculates new size in "collectionView:collectionViewLayout:sizeForItemAtIndex"

# Contributions

Contributions are welcome! 

Add your proposed solution in a seperate view controller and link to it from the Options List, that way all options can be viewed and compared. 
