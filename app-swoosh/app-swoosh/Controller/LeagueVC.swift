//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Sadman Sakib Saumik on 11/16/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player:Player!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()

    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender:self)
    }
    
    @IBAction func mensTapped(_ sender: Any) {
        buttonAction(league: "Mens")
    }
    
    @IBAction func womensTapped(_ sender: Any) {
        buttonAction(league: "Womens")
    }
    @IBAction func coedTapped(_ sender: Any) {
        buttonAction(league: "Co-Ed")
    }
    
    func buttonAction(league: String){
        player.PlayerLeague = league
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
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
