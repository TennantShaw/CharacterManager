//
//  ViewController.swift
//  CharacterManager
//
//  Created by Tennant Shaw on 4/25/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

typealias Life = (hp: Int, maxHP: Int)

class ViewController: UIViewController {
    
    @IBOutlet weak var hpButtonLabel: UIButton!
    @IBOutlet weak var mpButtonLabel: UIButton!
    @IBOutlet weak var nameButtonLabel: UIButton!
    @IBOutlet weak var strengthButtonLabel: UIButton!
    @IBOutlet weak var intelligenceButtonLabel: UIButton!
    @IBOutlet weak var defenseButtonLabel: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var peasantClassSwitch: UISwitch!
    @IBOutlet weak var warriorClassSwitch: UISwitch!
    @IBOutlet weak var wizardClassSwitch: UISwitch!
    
    var life: Life = (100, 100) {
        didSet {
            updateImage()
            updateDisplay()
            updatePeasantClass()
            updateWarriorClass()
            updateWizardClass()
        }
    }
    
    @IBAction func damage1(_ sender: UIButton) {
        if life.hp >= 1 {
            life.hp -= 1
        }
    }

    @IBAction func damage10(_ sender: UIButton) {
        if life.hp >= 10 {
            life.hp -= 10
        }
    }

    @IBAction func heal1(_ sender: UIButton) {
        if life.hp <= 99 {
        life.hp += 1
        }
    }
    
    @IBAction func heal10(_ sender: UIButton) {
        if life.hp <= 90 {
            life.hp += 10
        }
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updatePeasantClass()
    }
    
    @IBAction func warriorSwitchChanged(_ sender: UISwitch) {
        updateWarriorClass()
    }
    
    @IBAction func wizardSwitchChanged(_ sender: UISwitch) {
        updateWizardClass()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateDisplay()
    }
    
    func updateDisplay() {
        hpButtonLabel.setTitle(life.hp.description, for: .normal)
        mpButtonLabel.setTitle(peasantClass.mp.description, for: .normal)
        nameButtonLabel.setTitle(peasantClass.name.description, for: .normal)
        strengthButtonLabel.setTitle(peasantClass.str.description, for: .normal)
        intelligenceButtonLabel.setTitle(peasantClass.int.description, for: .normal)
        defenseButtonLabel.setTitle(peasantClass.def.description, for: .normal)
    }
    
    func updatePeasantClass() {
        if peasantClassSwitch.isOn == true {
            strengthButtonLabel.setTitle(peasantClass.str.description, for: .normal)
            intelligenceButtonLabel.setTitle(peasantClass.int.description, for: .normal)
            defenseButtonLabel.setTitle(peasantClass.def.description, for: .normal)
            warriorClassSwitch.isOn = false
            wizardClassSwitch.isOn = false
        }
    }
    
    func updateWarriorClass() {
        if warriorClassSwitch.isOn == true {
            strengthButtonLabel.setTitle(warriorClass.str.description, for: .normal)
            intelligenceButtonLabel.setTitle(warriorClass.int.description, for: .normal)
            defenseButtonLabel.setTitle(warriorClass.def.description, for: .normal)
            peasantClassSwitch.isOn = false
            wizardClassSwitch.isOn = false
        }

    }
    
    func updateWizardClass() {
        if wizardClassSwitch.isOn == true {
            strengthButtonLabel.setTitle(wizardClass.str.description, for: .normal)
            intelligenceButtonLabel.setTitle(wizardClass.int.description, for: .normal)
            defenseButtonLabel.setTitle(wizardClass.def.description, for: .normal)
            peasantClassSwitch.isOn = false
            warriorClassSwitch.isOn = false
        }
    }
    
    func updateImage() {
        if life.hp == 0 {
            imageView.isHighlighted = true
        } else {
            imageView.isHighlighted = false
        }
    }
}


