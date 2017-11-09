//
//  BDDXUITests.swift
//  BDDXUITests
//
//  Created by Shashikant Jagtap on 09/11/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

struct BDDXScreen {
    
    static var enterButton: XCUIElement {
        
        return XCUIApplication().buttons["enter"]
    }
    
    
    static var welcomeMessag: XCUIElement {
        
        return XCUIApplication().staticTexts["Welcome to BDDX"]
    }
    
}



enum BDDXLondon {
    case enterButton
    case welcomeText
    
    var element: XCUIElement {
        
        switch self {
        case .enterButton:
            return XCUIApplication().buttons["enter"]
        case .welcomeText:
            
            return XCUIApplication().staticTexts["Welcome to BDDX"]
        }
   
        
    }
}




protocol BDDX {
    
    func testAppHasEnterButton()
    func testAppShouldWelcomeUser()
}

extension BDDX {
    
    func givenILaunchedApp() {
        
        XCTContext.runActivity(named: "Given I launch my App") { (activity)  in
             XCUIApplication().launch()
        }
        
        
        XCUIApplication().launch()
        
    }
    
    
    func thenIShouldSeeEnterButton() {
        
        XCTContext.runActivity(named: "Then I should See enter button") { (activity)  in
            XCTAssertTrue(BDDXLondon.enterButton.element.exists)
        }
        
        
        
    }
    
    func whenITapOnEnterButton() {
        
        XCTContext.runActivity(named: "When I tap on Enter button") { (activity)  in
           BDDXLondon.enterButton.element.tap()
        }
    }
    
    func thenIShouldSeeWelcomeMessage() {
        
        XCTContext.runActivity(named: "Then I Should see welcome message") { (activity)  in
            XCTAssertTrue(BDDXLondon.welcomeText.element.exists)
        }
    }
}


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
