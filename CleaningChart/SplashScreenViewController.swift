//
//  SplashScreenViewController.swift
//  CleaningChart
//
//  Created by Kelly Slimmon on 6/28/19.
//  Copyright © 2019 Kelly Slimmon. All rights reserved.
//


import UIKit
import AVFoundation

class SplashScreenViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let yAtLoad = imageView.frame.origin.y
        imageView.frame.origin.y = view.frame.height
        UIView.animate(withDuration: 1.0, delay: 1.0, animations:{self.imageView.frame.origin.y = yAtLoad})
    }
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        performSegue(withIdentifier: "ShowIntroScreen", sender: nil)
    }
    
    
}

