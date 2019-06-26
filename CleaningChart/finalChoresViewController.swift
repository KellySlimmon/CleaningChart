//
//  finalChoresViewController.swift
//  CleaningChart
//
//  Created by Kelly Slimmon on 6/26/19.
//  Copyright © 2019 Kelly Slimmon. All rights reserved.
//

import UIKit

class finalChoresViewController: UIViewController {
    
    @IBOutlet weak var name1Label: UILabel!
    @IBOutlet weak var name2Label: UILabel!
    @IBOutlet weak var name3Label: UILabel!
    @IBOutlet weak var name4Label: UILabel!
    @IBOutlet weak var name5Label: UILabel!
    @IBOutlet weak var name6Label: UILabel!
    @IBOutlet weak var name7Label: UILabel!
    @IBOutlet weak var name8Label: UILabel!
    
    var numSeconds: Int!
    var name1: String!
    var name2: String!
    var name3: String!
    var name4: String!
    var name5: String!
    var name6: String!
    var name7: String!
    var name8: String!
    
  
    @IBOutlet weak var chore1Label: UILabel!
    @IBOutlet weak var chore2Label: UILabel!
    @IBOutlet weak var chore3Label: UILabel!
    @IBOutlet weak var chore4Label: UILabel!
    @IBOutlet weak var chore5Label: UILabel!
    @IBOutlet weak var chore6Label: UILabel!
    @IBOutlet weak var chore7Label: UILabel!
    @IBOutlet weak var chore8Label: UILabel!
    
    
    @IBOutlet weak var restartButton: UIButton!
    
    var choreArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name1Label.text = "\(name1!), your designated chore is:"
        name2Label.text = "\(name2!), your designated chore is:"
        name3Label.text = "\(name3!), your designated chore is:"
        name4Label.text = "\(name4!), your designated chore is:"
        name5Label.text = "\(name5!), your designated chore is:"
        name6Label.text = "\(name6!), your designated chore is:"
        name7Label.text = "\(name7!), your designated chore is:"
        name8Label.text = "\(name8!), your designated chore is:"
        
        findChores()
        
    }
    
    func findChores() {
        if numSeconds! == 1{
            print("worked")
            chore1Label.text = choreArray[5]
            chore2Label.text = choreArray[6]
            chore3Label.text = choreArray[7]
            chore4Label.text = choreArray[0]
            chore5Label.text = choreArray[1]
            chore6Label.text = choreArray[2]
            chore7Label.text = choreArray[3]
            chore8Label.text = choreArray[4]
            
        }
        if numSeconds! == 2 || numSeconds! == 6 {
            print("worked")
            chore1Label.text = choreArray[4]
            chore2Label.text = choreArray[5]
            chore3Label.text = choreArray[6]
            chore4Label.text = choreArray[7]
            chore5Label.text = choreArray[0]
            chore6Label.text = choreArray[1]
            chore7Label.text = choreArray[2]
            chore8Label.text = choreArray[3]
        }
        if numSeconds! == 3 || numSeconds! == 7 {
            print("worked")
            chore1Label.text = choreArray[2]
            chore2Label.text = choreArray[3]
            chore3Label.text = choreArray[4]
            chore4Label.text = choreArray[5]
            chore5Label.text = choreArray[6]
            chore6Label.text = choreArray[7]
            chore7Label.text = choreArray[0]
            chore8Label.text = choreArray[1]
        }
        if numSeconds! == 4 || numSeconds! == 8{
            print("worked")
            chore1Label.text = choreArray[0]
            chore2Label.text = choreArray[1]
            chore3Label.text = choreArray[2]
            chore4Label.text = choreArray[3]
            chore5Label.text = choreArray[4]
            chore6Label.text = choreArray[5]
            chore7Label.text = choreArray[6]
            chore8Label.text = choreArray[7]
        }
        if numSeconds! == 5{
            print("worked")
            chore1Label.text = choreArray[7]
            chore2Label.text = choreArray[0]
            chore3Label.text = choreArray[1]
            chore4Label.text = choreArray[2]
            chore5Label.text = choreArray[3]
            chore6Label.text = choreArray[4]
            chore7Label.text = choreArray[5]
            chore8Label.text = choreArray[6]
            
        }
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToStart", sender: restartButton)
    }
    
}
