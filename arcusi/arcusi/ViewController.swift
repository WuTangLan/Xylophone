//
//  ViewController.swift
//  arcusi
//
//  Created by Marcus Perovic on 09/10/2020.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController {

let soundArray = ["C", "D", "E", "F", "G", "A", "H"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
    }
    func playSound(soundFileName : String) {
            //testing: print tag numbers when buttons pressed.
            //print(sender.tag)
            
            let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
            
            //"do-catch-try" error handling.
            do {
                player = try AVAudioPlayer(contentsOf: soundURL!)
            }
            catch {
                print(error)
            }
            
        player?.play()
        }
    

            
            

    
}


