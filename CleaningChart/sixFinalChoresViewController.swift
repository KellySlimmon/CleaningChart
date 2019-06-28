//
//  sixFinalChoresViewController.swift
//  CleaningChart
//
//  Created by Kelly Slimmon on 6/27/19.
//  Copyright © 2019 Kelly Slimmon. All rights reserved.
//

import UIKit

class sixFinalChoresViewController: UIViewController {
    @IBOutlet weak var restartButton: UIButton!
    
    @IBOutlet weak var name1Label: UILabel!
    @IBOutlet weak var name2Label: UILabel!
    @IBOutlet weak var name3Label: UILabel!
    @IBOutlet weak var name4Label: UILabel!
    @IBOutlet weak var name5Label: UILabel!
    @IBOutlet weak var name6Label: UILabel!
    
    
    var numSeconds: Int!
    var name1: String!
    var name2: String!
    var name3: String!
    var name4: String!
    var name5: String!
    var name6: String!
    
    @IBOutlet weak var chore1Label: UILabel!
    @IBOutlet weak var chore2Label: UILabel!
    @IBOutlet weak var chore3Label: UILabel!
    @IBOutlet weak var chore4Label: UILabel!
    @IBOutlet weak var chore5Label: UILabel!
    @IBOutlet weak var chore6Label: UILabel!
    
    var choreArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name1Label.text = "\(name1!), your designated chore is:"
        name2Label.text = "\(name2!), your designated chore is:"
        name3Label.text = "\(name3!), your designated chore is:"
        name4Label.text = "\(name4!), your designated chore is:"
        name5Label.text = "\(name4!), your designated chore is:"
        name6Label.text = "\(name4!), your designated chore is:"
        
        findChores()
    }
    
    func findChores (){
        if numSeconds! == 1 || numSeconds! == 5{
            chore1Label.text = choreArray[0]
            chore2Label.text = choreArray[1]
            chore3Label.text = choreArray[2]
            chore4Label.text = choreArray[3]
            chore5Label.text = choreArray[4]
            chore6Label.text = choreArray[5]
            
        }
        if numSeconds! == 2 || numSeconds! == 6 {
            chore1Label.text = choreArray[4]
            chore2Label.text = choreArray[5]
            chore3Label.text = choreArray[0]
            chore4Label.text = choreArray[1]
            chore5Label.text = choreArray[2]
            chore6Label.text = choreArray[3]
        }
        if numSeconds! == 4 || numSeconds! == 8 || numSeconds! == 3 {
            chore1Label.text = choreArray[1]
            chore2Label.text = choreArray[2]
            chore3Label.text = choreArray[3]
            chore4Label.text = choreArray[4]
            chore5Label.text = choreArray[5]
            chore6Label.text = choreArray[0]
        }
        if numSeconds! == 7{
            chore1Label.text = choreArray[2]
            chore2Label.text = choreArray[3]
            chore3Label.text = choreArray[4]
            chore4Label.text = choreArray[5]
            chore5Label.text = choreArray[0]
            chore6Label.text = choreArray[1]
        }
//        if numSeconds! == 3{
//            chore1Label.text = choreArray[3]
//            chore2Label.text = choreArray[4]
//            chore3Label.text = choreArray[5]
//            chore4Label.text = choreArray[0]
//            chore5Label.text = choreArray[1]
//            chore6Label.text = choreArray[2]
//        }
    }
    
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToStart", sender: restartButton)
    }
    
}

