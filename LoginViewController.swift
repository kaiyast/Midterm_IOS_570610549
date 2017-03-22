//
//  LoginViewController.swift
//  Another_Music_Player_App
//
//  Created by gai lowvapong on 3/22/17.
//  Copyright © 2017 gai lowvapong. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var random_txt: UILabel!
    
    @IBOutlet weak var password_input: UITextField!
    
    @IBOutlet weak var login_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let rand = Int(arc4random_uniform(10000))
        
        random_txt.text = String(rand);
        
    UserDefaults.standard.set(String(rand), forKey: "password")
        // Do any additional setup after loading the view.
        

        

    }

    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func Login(_ sender: Any) {
        
        if( password_input.text == random_txt.text )
        {
            self.performSegue(withIdentifier: "login", sender: self)
            print("login_ok");
            
        }
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
