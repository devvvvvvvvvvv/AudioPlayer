//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Devon Dodgson on 5/8/19.
//  Copyright © 2019 Devon Dodgson. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var soundName : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: "fileName", withExtension: "")
        
        do {
            soundName = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print("Cannot locate file \(error)!")
        }
        
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        soundName.play()
    }
}



