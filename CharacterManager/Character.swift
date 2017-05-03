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



extension Character {
     convenience init?(jsonObject: [String:Any]) {
        guard let name = jsonObject[Character.nameKey] as? String,
            let hp = jsonObject[Character.hpKey] as? Int,
            let mp = jsonObject[Character.mpKey] as? Int,
            let str = jsonObject[Character.strKey] as? Int,
            let int = jsonObject[Character.intKey] as? Int,
            let def = jsonObject[Character.defKey] as? Int
            else {
                return nil
            }
        
        self.init(name: name, hp: hp, mp: mp, str: str, int: int, def: def)
    }


    var jsonObject: [String:Any] {
        let back: [String:Any] = [
            Character.nameKey : name,
            Character.hpKey : hp,
            Character.mpKey : mp,
            Character.strKey : str,
            Character.intKey : int,
            Character.defKey : def
        ]
        return back
    }

    internal static var nameKey: String = "name"
    internal static var hpKey: String = "hp"
    internal static var mpKey: String = "mp"
    internal static var strKey: String = "str"
    internal static var intKey: String = "int"
    internal static var defKey: String = "def"
    
}




