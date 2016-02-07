# Demo - Dynamic Width CollectionView cells

A demo project for achieving full width UICollectionView cells (like UITableView).

Based on the write up in [this blog post](http://www.matrixprojects.net/p/uicollectionviewcell-dynamic-width/)

- A subclass of `UICollectionViewFlowLayout` is used
- The subclass modifies `itemSize`'s `width` property on bounds change
