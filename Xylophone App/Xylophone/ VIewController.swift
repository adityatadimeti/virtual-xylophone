//
//  ViewController.swift
//  Xylophone
//

//
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        var url = Bundle.main.url(forResource: "note1", withExtension: "wav")! // referencing wav files included in folder
        if(sender.tag==2)
        {
             url = Bundle.main.url(forResource: "note2", withExtension: "wav")!
        }
        else if(sender.tag==3){
             url = Bundle.main.url(forResource: "note3", withExtension: "wav")!
        }
        else if(sender.tag==4){
             url = Bundle.main.url(forResource: "note4", withExtension: "wav")!
        }
        else if(sender.tag==5){
             url = Bundle.main.url(forResource: "note5", withExtension: "wav")!
        }
        else if(sender.tag==6){
            url = Bundle.main.url(forResource: "note6", withExtension: "wav")!
        }
        else{
             url = Bundle.main.url(forResource: "note7", withExtension: "wav")!

        }
        
        do { // functionality from stack overflow
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
  

}

