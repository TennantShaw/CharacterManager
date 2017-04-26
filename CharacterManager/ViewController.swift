//
//  ViewController.swift
//  CharacterManager
//
//  Created by Tennant Shaw on 4/25/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hpButtonLabel: UIButton!
    @IBOutlet weak var mpButtonLabel: UIButton!
    @IBOutlet weak var nameButtonLabel: UIButton!
    
    
    class Character {
        var name: String
        var hp: Int
        var mp: Int
        
        init(name: String, hp: Int, mp: Int) {
            self.name = name
            self.hp = hp
            self.mp = mp
        }
    }
    
    
    class CharacterClass: Character {
        var warrior = Character(name: "Tennant", hp: 150, mp: 50)
        var wizard = Character(name: "Tennant", hp: 50, mp: 150)
        
        init () {
            super.init(name: "", hp: 100, mp: 100)
        }
    }
    
    var player: Character = Character(name: "Tennant", hp: 100, mp: 100)
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateDisplay()
    }
    
    func updateDisplay() {
        hpButtonLabel.setTitle(player.hp.description, for: .normal)
        mpButtonLabel.setTitle(player.mp.description, for: .normal)
        nameButtonLabel.setTitle(player.name.description, for: .normal)
    }
    
}


