//
//  BDDXUITests.swift
//  BDDXUITests
//
//  Created by Shashikant Jagtap on 09/11/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

class BDDXUITests: XCTestCase, BDDX {
    
    func testAppHasEnterButton() {
        
        givenILaunchedApp()
        thenIShouldSeeEnterButton()
        
    }
    
    func testAppShouldWelcomeUser() {
        
        givenILaunchedApp()
        whenITapOnEnterButton()
        thenIShouldSeeWelcomeMessage()
    }
    
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        
    }
    
    override func tearDown() {
      
        super.tearDown()
    }
    
}
