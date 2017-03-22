//
//  SongListViewController.swift
//  Another_Music_Player_App
//
//  Created by gai lowvapong on 3/22/17.
//  Copyright © 2017 gai lowvapong. All rights reserved.
//

import UIKit

class SongListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

     let Song_list = ["BlowYourMind" , "ColdWater" , "ComeToMe" ,"Hello","KeepitMello","LoveonMe","OneNightOnly","ThinkingAboutYou" ,"Wants" ,"WhereThemGirlsAt" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UserDefaults.standard.set("BlowYourMind", forKey: "songname")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Song_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = String(indexPath.row + 1 ) + "   " + Song_list[indexPath.row];

        
        return cell
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
