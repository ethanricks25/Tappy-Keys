//
//  WordsController.swift
//  Tappy-Keys
//
//  Created by Ethan Ricks on 11/14/23.
//
import Foundation
import UIKit

struct Entry{
    var letter: String
    var correct: Bool
}

class WordsController: NSObject,
                       UICollectionViewDataSource,
                       UICollectionViewDelegate,
                       UICollectionViewDelegateFlowLayout {
    var letterCellIdentifier: String { "LetterCell" };
    var itemPadding: Double { 3.0 }
    let numItemsPerRow = 10
    let numRows = 6
    let collectionView: UICollectionView
    let paragraph: [[String]]
    
    var placeOnScreen = 0
    var placeInPar = 0
    var gameType: String?
    var currWord: [Entry]?
    var listOfWords: [[Entry]]?
    
    
    
    init(collectionView: UICollectionView, gameType: String) {
      self.collectionView = collectionView
        self.gameType = gameType
        self.paragraph = ParagraphGenerator.generateParagraph(string: gameType).map { innerArray in
          innerArray.map { String( $0) }
      }
      super.init()
      collectionView.delegate = self
      collectionView.dataSource = self
      
    }
    func findWPM()-> Int{
        return listOfWords!.count
    }
/*
    func findAccuracy()->Float{
        
        for word in listOfWords! {
            
        }
        
        let totalWords = findWPM()
        
        return Float(listOfCorrectWords.count) / Float(totalWords)
    }
*/
    
    func enter(_ string: String) {
        if placeOnScreen < numRows * numItemsPerRow {
            let cell = collectionView.cellForItem(at: IndexPath(item:placeOnScreen % numItemsPerRow, section: placeOnScreen / numItemsPerRow  )) as! LetterCell
            check(currentCell: cell, keyboardChar: string)
            placeInPar += 1
            placeOnScreen += 1
        } else {
            populateView(placeInPar: self.placeInPar)
        }
      
    }
    func check (currentCell: LetterCell, keyboardChar: String){
        let correctEntry = currentCell.letterLabel.text?.uppercased() == keyboardChar
        let currEntry = Entry(letter: keyboardChar, correct: correctEntry)
        self.currWord?.append(currEntry)
        if correctEntry {
            currentCell.set(style: LetterCellStyle.correct)
        } else{
            currentCell.set(style: LetterCellStyle.incorrect)
        }
        if keyboardChar == " " {
            self.listOfWords?.append(currWord!)
            self.currWord = []
        }
    }
    
    func deleteLastCharacter() {
      guard placeOnScreen >= 0 else { return }
      let cell = collectionView.cellForItem(at: IndexPath(item: placeOnScreen - 1, section: 0)) as! LetterCell
      placeOnScreen -= 1
      placeInPar -= 1
      cell.set(style: LetterCellStyle.initial)
      if cell.letterLabel.text == " "{
          self.currWord = self.listOfWords?.popLast()
      } else{
          self.currWord?.removeLast()
      }
      
    }
    
    
    func populateView(placeInPar: Int){
        for row in 0..<numRows{
            for column in 0..<numItemsPerRow{
                let rowAdjustment = placeInPar / numRows
                let columnAdjustment = placeInPar / numItemsPerRow
                let character = paragraph[row+rowAdjustment][column+columnAdjustment]
                
                let cell = collectionView.cellForItem(at: IndexPath(item: row + column, section: 0)) as! LetterCell
                cell.set(letter: character)
                print("💯" + cell.letterLabel.text!)
            }
        }
        self.placeOnScreen = 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width / (Double(numItemsPerRow) + 4)
        let height = collectionView.frame.size.height / (Double(numRows) + 2)
        return CGSize(width: width, height: height)
      }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: letterCellIdentifier, for: indexPath) as! LetterCell
        cell.set(letter: paragraph[indexPath.section][indexPath.row])
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
      return numRows
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numItems(in: section)
    }
    
    func numItems(in row: Int) -> Int {
      return paragraph[row].count
    }
   
    
}
