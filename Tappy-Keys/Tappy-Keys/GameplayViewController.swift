//
//  GameplayViewController.swift
//  Tappy-Keys
//
//  Created by Ethan Ricks on 11/14/23.
//

import UIKit

class GameplayViewController: UIViewController {

    @IBOutlet weak var keyboardCollectionView: UICollectionView!
    @IBOutlet weak var wordsCollectionView: UICollectionView!
    
    private var wordsController: WordsController!
    private var keyboardController: KeyboardController!
    var gameType: String?
    var countdownTimer: Timer?
    var totalTime = 60
    // enter and delete will be used here
    override func viewDidLoad() {
        super.viewDidLoad()

        wordsController = WordsController(collectionView: wordsCollectionView, gameType: self.gameType!)
        keyboardController = KeyboardController(collectionView: keyboardCollectionView)
        startTimer()
        // Do any additional setup after loading the view.
        keyboardController.didSelectString = { (letter: String) -> Void in
            if (letter == DELETE_KEY){
                self.wordsController.deleteLastCharacter()
            }else{
                self.wordsController.enter(letter)
            }
        }
    }
    func startTimer() {
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        if totalTime > 0 {
            totalTime -= 1
            print("Time remaining: \(totalTime) seconds")
            
            // Update your UI with the remaining time if needed
        } else {
            // Stop the timer when the countdown reaches zero
            stopTimer()
        }
    }
    
    func stopTimer() {
        countdownTimer?.invalidate()
        performSegue(withIdentifier: "gameOverSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destinationVC = segue.destination as? GameOverViewController {
                
                destinationVC.wpm = wordsController.findWPM()
                destinationVC.accuracy = wordsController.findAccuracy()
                
            }
        }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
