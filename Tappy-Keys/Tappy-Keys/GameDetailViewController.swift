//
//  GameDetailViewController.swift
//  Tappy-Keys
//
//  Created by Ethan Ricks on 11/14/23.
//

import UIKit

class GameDetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    var buttonIdentifier: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let identifier = buttonIdentifier {
                    // Configure UI elements based on the buttonIdentifier
            switch identifier {
                    case "short":
                if let image = UIImage(systemName: "tortoise.fill"){
                    detailImageView.image = image
                }

                detailLabel.text = "Short Game - 1 minutes"
                        // Configure for Button1
                    case "medium":
                if let image = UIImage(systemName: "dog.fill") {
                    detailImageView.image = image
                }
                detailLabel.text = "Medium Game - 2 minutes"
                        // Configure for Button2
                    case "long":
                if let image = UIImage(systemName: "hare.fill") {
                    detailImageView.image = image
                }
                detailLabel.text = "Long Game - 3 minutes"
                        // Configure for Button3
                    default:
                        break
            }
        }

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? GameplayViewController {

                switch buttonIdentifier {
                case "short":
                    destinationVC.gameType = "short"
                case "medium":
                    destinationVC.gameType = "medium"
                case "long":
                    destinationVC.gameType = "long"
                default:
                    break
                }
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
