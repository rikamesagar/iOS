//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
//*import AVFoundation
//*import AudioToolbox
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
//*     var player: AVAudioPlayer?
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: soundArray[sender.tag-1])
        
        
//*        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
//*
//*        do{
//*            player = try AVAudioPlayer(contentsOf: url)
//*            guard let player = player else { return }
//*
//*            player.prepareToPlay()
//*            player.play()
//*        }catch let error as Error{
//*            print(error)
//*        }

//        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav"){
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
//            //PLAY
//            AudioServicesPlaySystemSound(mySound)
//        }
        }
    
    func playSound(soundFileName : String){
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

