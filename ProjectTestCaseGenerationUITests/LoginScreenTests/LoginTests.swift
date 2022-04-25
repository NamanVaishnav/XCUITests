//
//  LoginTests.swift
//  ProjectTestCaseGenerationUITests
//
//  Created by Naman Vaishnav on 24/04/22.
//

import XCTest

class LoginTests: XCTestCase {
    
    private var app: XCUIApplication!

    override func setUp() {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        self.app = Application()
        self.app.launch()
        
    }

    override class func tearDown() {
    }
    
    func test_loginScreen(){
        let screen = LoginScreen(app: self.app)
        
        // Check element is exists
        XCTAssertTrue(screen.txtEmail.exists)
        XCTAssertTrue(screen.txtPassword.exists)
        XCTAssertTrue(screen.btnSubmit.exists)
    }

}
