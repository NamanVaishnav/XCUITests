//
//  HomeTests.swift
//  ProjectTestCaseGenerationUITests
//
//  Created by Naman Vaishnav on 24/04/22.
//

import XCTest

class HomeTests: XCTestCase {

    private var app: Application!
    
    override func setUp() {
        continueAfterFailure = false
        
        self.app = Application()
        self.app.activate()
    }
    
    func test_homeScreen(){
        let loginScreen = LoginScreen(app: self.app)
        let screen = loginScreen.launchHomeScreen()
        
        // Check element is exists
        XCTAssertTrue(screen.lblHome.exists)
    }
}
