//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Andrew Taylor on 26/09/2018.
//  Copyright © 2018 Andrew Taylor. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onNextTapped(_ sender: Any) {
     performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

}
