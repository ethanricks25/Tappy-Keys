//
//  GameOverViewController.swift
//  Tappy-Keys
//
//  Created by Ethan Ricks on 11/18/23.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet weak var accuracyLabel: UILabel!
    @IBOutlet weak var wpmLabel: UILabel!
    var wpm: Int?
    var accuracy: Float?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
