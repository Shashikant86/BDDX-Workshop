//
//  BDDStep.swift
//  BDDXUITests
//
//  Created by Shashikant Jagtap on 09/11/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest


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

