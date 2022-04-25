//
//  HomeScreen.swift
//  ProjectTestCaseGenerationUITests
//
//  Created by Naman Vaishnav on 24/04/22.
//

import Foundation
import XCTest

class HomeScreen: Screen {
    override var rootElement: XCUIElement {
        return app.otherElements[.homeVC_accessibility_viewController]
    }
    
    var lblHome: XCUIElement {
        return app.staticTexts[.homeVC_accessibility_lblHome]
    }
}
