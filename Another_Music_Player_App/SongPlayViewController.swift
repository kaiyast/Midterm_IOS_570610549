//
//  SongPlayViewController.swift
//  Another_Music_Player_App
//
//  Created by gai lowvapong on 3/22/17.
//  Copyright © 2017 gai lowvapong. All rights reserved.
//

import UIKit
import AVFoundation

class SongPlayViewController: UIViewController {

    var player = AVAudioPlayer()
   
    
    @IBOutlet weak var songname: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let getsongname = UserDefaults.standard.object(forKey: "songname")
        
        songname.title = getsongname as! String?
        
         let audioPath = Bundle.main.path(forResource: "default", ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        }
        catch {
            // error
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func play(_ sender: Any) {
          player.play()
    }
    @IBAction func pasue(_ sender: Any) {
          player.pause()
    }
    
    @IBAction func stop(_ sender: Any) {
          player.stop()
    }
    
    @IBOutlet weak var volum_val: UISlider!
    @IBAction func changevolum(_ sender: Any) {
        player.setVolume(volum_val.value, fadeDuration: 1)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
