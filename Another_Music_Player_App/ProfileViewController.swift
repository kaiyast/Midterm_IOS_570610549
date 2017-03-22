//
//  ProfileViewController.swift
//  Another_Music_Player_App
//
//  Created by gai lowvapong on 3/22/17.
//  Copyright © 2017 gai lowvapong. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var password_txt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         let passwordtxt = UserDefaults.standard.object(forKey: "password")
        
    password_txt.text = passwordtxt as! String?;
        // Do any additional setup after loading the  view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
