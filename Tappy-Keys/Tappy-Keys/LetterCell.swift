//
//  LetterCell.swift
//  Tappy-Keys
//
//  Created by Ethan Ricks on 11/16/23.
//

import UIKit

enum LetterCellStyle {
  case initial
  case incorrect
  case correct
}

class LetterCell: UICollectionViewCell {
    @IBOutlet weak var letterLabel: UILabel!
    
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      layer.borderWidth = 2.0
    }
    
    func set(letter: String) {
      letterLabel.text = letter
    }

    func clearLetter() {
      letterLabel.text = ""
    }
    
    func set(style: LetterCellStyle) {
      // START YOUR CODE HERE
          switch style {
              case LetterCellStyle.initial:
                  contentView.backgroundColor = UIColor.white
              case LetterCellStyle.incorrect:
                  contentView.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
              case LetterCellStyle.correct:
                  contentView.backgroundColor = UIColor(red: 0.38, green: 0.55, blue: 0.33, alpha: 1.0)
        }
      // END YOUR CODE HERE
    }
}
