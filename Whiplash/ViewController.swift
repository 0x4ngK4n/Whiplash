//
//  ViewController.swift
//  Whiplash
//
//  Created by Angkan Chanda on 5/2/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var ap = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var WhipLabel: UILabel!
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            do {
                ap = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "crack_the_whip", ofType: "mp3")!))
                //ap.prepareToPlay()
                ap.play()
                print("audio")
            } catch {
                print(error)
            }
            WhipLabel.text = "Whipped your arse!"
        }
    }
    

}

