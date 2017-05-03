//
//  CharacterManagerTests.swift
//  CharacterManagerTests
//
//  Created by Tennant Shaw on 4/25/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import XCTest
@testable import CharacterManager

class CharacterManagerTests: XCTestCase {
    func testSerializeToJSON() {
        let expectedName = "Tennant"
        let expectedHP = 100
        let expectedMP = 100
        let expectedSTR = 12
        let expectedINT = 12
        let expectedDEF = 12
        
        let character = Character(name: "Tennant", hp: 100, mp: 100, str: 12, int: 12, def: 12)
        
        let result = character.jsonObject
        
        if let resultName = result[Character.nameKey] as? String,
            let resultHP = result[Character.hpKey] as? Int,
            let resultMP = result[Character.mpKey] as? Int,
            let resultSTR = result[Character.strKey] as? Int,
            let resultINT = result[Character.intKey] as? Int,
            let resultDEF = result[Character.defKey] as? Int {
            XCTAssertEqual(resultName, expectedName)
            XCTAssertEqual(resultHP, expectedHP)
            XCTAssertEqual(resultMP, expectedMP)
            XCTAssertEqual(resultSTR, expectedSTR)
            XCTAssertEqual(resultINT, expectedINT)
            XCTAssertEqual(resultDEF, expectedDEF)
        } else {
            XCTFail("failed to extract value(s) for JSON Keys")
        }
    }
}


