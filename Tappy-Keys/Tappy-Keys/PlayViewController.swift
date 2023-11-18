//
//  PlayViewController.swift
//  Tappy-Keys
//
//  Created by Ethan Ricks on 11/13/23.
//

import UIKit

class PlayViewController: UIViewController {

    
    @IBOutlet weak var longButton: UIButton!
    @IBOutlet weak var medButton: UIButton!
    @IBOutlet weak var shortButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? GameDetailViewController {
            if let button = sender as? UIButton {
                // Set the buttonIdentifier based on which button was pressed
                switch button {
                case shortButton:
                    destinationVC.buttonIdentifier = "short"
                case medButton:
                    destinationVC.buttonIdentifier = "medium"
                case longButton:
                    destinationVC.buttonIdentifier = "long"
                default:
                    break
                }
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
