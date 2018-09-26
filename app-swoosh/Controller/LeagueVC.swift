//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Andrew Taylor on 26/09/2018.
//  Copyright © 2018 Andrew Taylor. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var newPlayer : Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newPlayer = Player()

    }
    
    @IBAction func onNextTapped(_ sender: Any) {
     performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "Mens")
        
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens")

    }
    
    @IBAction func onBothTapped(_ sender: Any) {
        selectLeague(leagueType: "Both")
    }
    
    func selectLeague(leagueType : String){
        newPlayer.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVC = segue.destination as? SkillVC {
            SkillVC.player = newPlayer
        }
    }
    
}
