//
//  KeyboardController.swift
//  Tappy-Keys
//
//  Created by Ethan Ricks on 11/14/23.
//

import UIKit


class KeyboardController: NSObject,
                          UICollectionViewDataSource,
                          UICollectionViewDelegate,
                          UICollectionViewDelegateFlowLayout {
    private let keyboardRows: [[String]] = [
      ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"],
      ["A", "S", "D", "F", "G", "H", "J", "K", "L",  "."],
      ["Z", "X", "C", "V",SPACE, "B", "N", "M",",", DELETE_KEY]
    ]
    
    
    var didSelectString: ((String) -> Void)?
    
    init(collectionView: UICollectionView) {
      super.init()
      collectionView.delegate = self
      collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numItems(in: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "KeyboardCell",for: indexPath) as! KeyboardCell
        cell.configure(with: keyboardRows[indexPath.section][indexPath.row])
        // Exercise 4: Pass in the `didSelectString` closure to the KeyboardCell's corresponding property
        // START YOUR CODE HERE
          cell.didSelectString = didSelectString
        
        // ...
        // END YOUR CODE HERE
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth: CGFloat = 27
        let cellHeight: CGFloat = 45  // Adjust the height as needed
        return CGSize(width: cellWidth, height: cellHeight)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
      return .zero
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
      return 3
    }
    func numItems(in row: Int) -> Int {
      return keyboardRows[row].count
    }
    
}
