//
//  BDDScreen.swift
//  BDDXUITests
//
//  Created by Shashikant Jagtap on 09/11/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import Foundation
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
