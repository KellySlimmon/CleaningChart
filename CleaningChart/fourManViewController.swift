//
//  fourManViewController.swift
//  CleaningChart
//
//  Created by Kelly Slimmon on 6/23/19.
//  Copyright © 2019 Kelly Slimmon. All rights reserved.
//

import UIKit
import AVFoundation

class fourManViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var seeFinalButton: UIButton!
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var secondName: UITextField!
    @IBOutlet weak var thirdName: UITextField!
    @IBOutlet weak var fourthName: UITextField!
    
    @IBOutlet weak var spinWheelImage: UIImageView!
    
    var chores = [String]()
    var audioPlayer = AVAudioPlayer()
    
    var timer: Timer!
    var animator: UIViewPropertyAnimator!
    var randomSeconds = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinButton.isEnabled = true
        firstLabel.text = chores[0]
        secondLabel.text = chores[1]
        thirdLabel.text = chores[2]
        fourthLabel.text = chores[3]
        seeFinalButton.isHidden = true
    }
    
    
    @IBAction func spinButtonPressed(_ sender: UIButton) {
        createAnimation()
        randomSeconds = Int.random(in: 1...8)
        playSound(soundName: "spinSound", audioPlayer: &audioPlayer)
        print("I am going to spin for \(randomSeconds) seconds")
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(randomSeconds), target: self, selector: #selector(fireTimer), userInfo: nil, repeats: false)
        spinButton.isEnabled = false
        
    }
    
    
    
    private func createAnimation() {
        animator = UIViewPropertyAnimator.runningPropertyAnimator(withDuration: (2.0/7.0), delay: 0, options: .curveLinear, animations: {
            UIView.animateKeyframes(withDuration: (1.0/2.0), delay: 0, animations: {
                UIView.addKeyframe(withRelativeStartTime: (0), relativeDuration: 1.0 / 3.0) {
                    self.spinWheelImage.transform = .init(rotationAngle: .pi * 2 * 1 / 3)
                }
                UIView.addKeyframe(withRelativeStartTime: 1.0 / 3.0, relativeDuration: 1.0 / 3.0) {
                    self.spinWheelImage.transform = .init(rotationAngle: .pi * 2 * 2 / 3)
                }
                UIView.addKeyframe(withRelativeStartTime: 2.0 / 3.0, relativeDuration: 1.0 / 3.0) {
                    self.spinWheelImage.transform = .identity
                }
            })
        }, completion: { [weak self] _ in
            self?.createAnimation()
        })
    }
    
    func stopSpinning () {
        animator.stopAnimation(true)
        print("stop")
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
    
    @objc func fireTimer() {
        print("Timer fired!")
        audioPlayer.stop()
        stopSpinning()
        spinButton.isEnabled = false
        seeFinalButton.isHidden = false
    }
    
    
    
    @IBAction func seeFinalButtonPressed(_ sender: UIButton){
        performSegue(withIdentifier: "ShowChores", sender: spinButton)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowChores" {
            let destination = segue.destination as! fourFinalChoresViewController
            destination.numSeconds = randomSeconds
            destination.name1 = firstName.text!
            destination.name2 = secondName.text!
            destination.name3 = thirdName.text!
            destination.name4 = fourthName.text!
            
            destination.choreArray = chores
        }
    }
    
    
    
    
}
