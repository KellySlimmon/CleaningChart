//
//  ViewController.swift
//  CleaningChart
//
//  Created by Kelly Slimmon on 6/18/19.
//  Copyright © 2019 Kelly Slimmon. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var spinWheelImage: UIImageView!
    var numColors = 8
    var counter = 0
    
    var chores = [String]()
    var audioPlayer = AVAudioPlayer()
    
    var timer: Timer!
    var animator: UIViewPropertyAnimator!
    let upperLimitInSeconds: Double = 10.0
    
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var seventhLabel: UILabel!
    @IBOutlet weak var eighthLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = chores[0]
        secondLabel.text = chores[1]
        thirdLabel.text = chores[2]
        fourthLabel.text = chores[3]
        fifthLabel.text = chores[4]
        sixthLabel.text = chores[5]
        seventhLabel.text = chores[6]
        eighthLabel.text = chores[7]
        
        
        
        
        //        createAnimation()
        //        animator.pauseAnimation()
        //        stopSpinning()
    }
    
    @IBAction func spinButtonPressed(_ sender: UIButton) {
        // When using createAnimation function above
        // animator.startAnimation()
        createAnimation()
        let randomSeconds = Double.random(in: 1.0...upperLimitInSeconds)
        print("I am going to spin for \(randomSeconds) seconds")
        timer = Timer.scheduledTimer(timeInterval: randomSeconds, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: false)
    }
    
    
    
    private func createAnimation() {
        animator = UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 1.0, delay: 0, options: .curveLinear, animations: {
            UIView.animateKeyframes(withDuration: 1.0, delay: 0, animations: {
                UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0 / 3.0) {
                    self.spinWheelImage.transform = .init(rotationAngle: .pi * 2 * 1 / 3)
                    print("first rotation")
                }
                UIView.addKeyframe(withRelativeStartTime: 1.0 / 3.0, relativeDuration: 1.0 / 3.0) {
                    self.spinWheelImage.transform = .init(rotationAngle: .pi * 2 * 2 / 3)
                    print("second rotation")
                }
                UIView.addKeyframe(withRelativeStartTime: 2.0 / 3.0, relativeDuration: 1.0 / 3.0) {
                    self.spinWheelImage.transform = .identity
                    print("third rotation")
                }
            })
        }, completion: { [weak self] _ in
            self?.createAnimation()
        })
        playSound(soundName: "spinSound", audioPlayer: &audioPlayer)
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        if let sound = NSDataAsset(name: soundName){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch{
                print("ERROR: file\(soundName) couldn't be played as a sound.")
            }
        }else {
            print("ERROR: file\(soundName) didn't load")
        }
    }
    
    func stopSpinning () {
        // animator.pauseAnimation()
        animator.stopAnimation(true)
        print("stop")
        audioPlayer.stop()
        
    }
    
    @objc func fireTimer() {
        print("Timer fired!")
        stopSpinning()
    }
    
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToStart", sender: restartButton)
    }
    
}


