//
//  ChoreListViewController.swift
//  CleaningChart
//
//  Created by Kelly Slimmon on 6/24/19.
//  Copyright © 2019 Kelly Slimmon. All rights reserved.
//

import UIKit



class ChoreListViewController: UIViewController {
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    @IBOutlet weak var sixthButton: UIButton!
    @IBOutlet weak var seventhButton: UIButton!
    @IBOutlet weak var eighthButton: UIButton!
    @IBOutlet weak var ninthButton: UIButton!
    @IBOutlet weak var tenthButton: UIButton!
    @IBOutlet weak var eleventhButton: UIButton!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var seventhLabel: UILabel!
    @IBOutlet weak var eighthLabel: UILabel!
    @IBOutlet weak var ninthLabel: UILabel!
    @IBOutlet weak var tenthLabel: UILabel!
    @IBOutlet weak var eleventhLabel: UILabel!
    
    @IBOutlet weak var goBackButton: UIBarButtonItem!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    var finalChoresArray = [String]()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneButton.isEnabled = false
    }
    
    func eightSelected() {
        if finalChoresArray.count == 8 {
            doneButton.isEnabled = true
            var final = [finalChoresArray]
            print("enabled")
        } else {
            doneButton.isEnabled = false
        }
    }
    
    @IBAction func goBackPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "GoBack", sender: goBackButton)
    }
    
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowEight" {
            let destination = segue.destination as! ViewController
            destination.chores = finalChoresArray
        }
    }
    
    
    
    
    
    @IBAction func firstChoreButtonPressed(_ sender: UIButton) {
        if firstButton.currentImage == UIImage(named: "UncheckedBox"){
            firstButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(firstLabel.text!)
            print(finalChoresArray)
        } else {
            firstButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: firstLabel.text!)!)
        }
        
        eightSelected()
        
    }
    @IBAction func secondChoreButtonPressed(_ sender: UIButton) {
        if secondButton.currentImage == UIImage(named: "UncheckedBox"){
            secondButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(secondLabel.text!)
            print(finalChoresArray)
        } else {
            secondButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: secondLabel.text!)!)
        }
        
        eightSelected()
    }
    @IBAction func thirdChoreButtonPressed(_ sender: UIButton) {
        if thirdButton.currentImage == UIImage(named: "UncheckedBox"){
            thirdButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(thirdLabel.text!)
            print(finalChoresArray)
        } else {
            thirdButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: thirdLabel.text!)!)
        }
        eightSelected()
    }
    @IBAction func fourthChoreButtonPressed(_ sender: UIButton) {
        if fourthButton.currentImage == UIImage(named: "UncheckedBox"){
            fourthButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(fourthLabel.text!)
            print(finalChoresArray)
        } else {
            fourthButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: fourthLabel.text!)!)
        }
        eightSelected()
    }
    @IBAction func fifthChoreButtonPressed(_ sender: UIButton) {
        if fifthButton.currentImage == UIImage(named: "UncheckedBox"){
            fifthButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(fifthLabel.text!)
            print(finalChoresArray)
        } else {
            fifthButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: fifthLabel.text!)!)
        }
        eightSelected()
    }
    @IBAction func sixthChoreButtonPressed(_ sender: UIButton) {
        if sixthButton.currentImage == UIImage(named: "UncheckedBox"){
            sixthButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(sixthLabel.text!)
            print(finalChoresArray)
        } else {
            sixthButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: sixthLabel.text!)!)
        }
        eightSelected()
    }
    @IBAction func seventhChoreButtonPressed(_ sender: UIButton) {
        if seventhButton.currentImage == UIImage(named: "UncheckedBox"){
            seventhButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(seventhLabel.text!)
            print(finalChoresArray)
        } else {
            seventhButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: seventhLabel.text!)!)
        }
        eightSelected()
    }
    @IBAction func eighthChoreButtonPressed(_ sender: UIButton) {
        if eighthButton.currentImage == UIImage(named: "UncheckedBox"){
            eighthButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(eighthLabel.text!)
            print(finalChoresArray)
        } else {
            eighthButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: eighthLabel.text!)!)
        }
        eightSelected()
    }
    @IBAction func ninthChoreButtonPressed(_ sender: UIButton){
        if ninthButton.currentImage == UIImage(named: "UncheckedBox"){
            ninthButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(ninthLabel.text!)
            print(finalChoresArray)
        } else {
            ninthButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: ninthLabel.text!)!)
        }
        eightSelected()
    }
    @IBAction func tenthChoreButtonPressed(_ sender: UIButton){
        if tenthButton.currentImage == UIImage(named: "UncheckedBox"){
            tenthButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(tenthLabel.text!)
            print(finalChoresArray)
        } else {
            tenthButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: tenthLabel.text!)!)
        }
        eightSelected()
    }
    @IBAction func eleventhChoreButtonPressed(_ sender: UIButton){
        if eleventhButton.currentImage == UIImage(named: "UncheckedBox"){
            eleventhButton.setImage(UIImage(named: "CheckedBox"), for: .normal)
            finalChoresArray.append(eleventhLabel.text!)
            print(finalChoresArray)
        } else {
            eleventhButton.setImage(UIImage(named: "UncheckedBox"), for: .normal)
            finalChoresArray.remove(at: finalChoresArray.index(of: eleventhLabel.text!)!)
        }
        eightSelected()
    }
    
    
}
