//
//  IntroScreen.swift
//  CleaningChart
//
//  Created by Kelly Slimmon on 6/23/19.
//  Copyright © 2019 Kelly Slimmon. All rights reserved.
//

import UIKit

class IntroScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func eightButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowEightList", sender: nil)
    }
    @IBAction func fourButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowFourList", sender: nil)
    }
    @IBAction func sixButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowSixList", sender: nil)
        
    }
    
}
