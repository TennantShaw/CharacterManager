//
//  Character.swift
//  CharacterManager
//
//  Created by Tennant Shaw on 4/26/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation


class Character {
    internal var name: String
    internal var hp: Int
    internal var mp: Int
    internal var str: Int
    internal var int: Int
    internal var def: Int
    
    
    init(name: String, hp: Int, mp: Int, str: Int, int: Int, def: Int) {
        self.name = name
        self.hp = hp
        self.mp = mp
        self.str = str
        self.int = int
        self.def = def
    }
}

var peasantClass: Character = Character(name: "Tennant", hp: 100, mp: 100, str: 12, int: 12, def: 12)

var warriorClass: Character = Character(name: "Tennant", hp: 100, mp: 100, str: 18, int: 9, def: 16)

var wizardClass: Character = Character(name: "Tennant", hp: 100, mp: 100, str: 9, int: 18, def: 12)


