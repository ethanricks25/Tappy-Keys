//
//  KeyboardCell.swift
//  Tappy-Keys
//
//  Created by Ethan Ricks on 11/14/23.
//
import AVFoundation

import UIKit
class KeyboardCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelContainerView: UIView!
    
    var audioPlayer: AVAudioPlayer?
    private var string: String!
    var didSelectString: ((String) -> Void)!
    
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapString))
      contentView.addGestureRecognizer(tapGestureRecognizer)
    }
    func configure(with string: String) {
      labelContainerView.layer.cornerRadius = 4.0
      labelContainerView.backgroundColor = .gray
        self.string = string
        self.label.text = string
        
      }
    @objc private func didTapString() {
        let pathToSound = Bundle.main.path(forResource: "keyboard_sound", ofType: "mp3")
        let url = URL(fileURLWithPath: pathToSound!)
        
        do{
            didSelectString(string)
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch{
            
        }
        
    }
}
