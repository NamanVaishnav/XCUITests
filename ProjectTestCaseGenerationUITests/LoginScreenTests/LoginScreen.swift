//
//  LoginScreen.swift
//  ProjectTestCaseGenerationUITests
//
//  Created by Naman Vaishnav on 24/04/22.
//

import Foundation
import XCTest

class LoginScreen: Screen {
    override var rootElement: XCUIElement {
        return app.otherElements[.loginVC_accessibility_viewController]
    }
    
    var txtEmail: XCUIElement {
        return app.textFields[.loginVC_accessibility_txtEmail]
    }
    
    var txtPassword: XCUIElement {
        return app.textFields[.loginVC_accessibility_txtPassword]
    }
    
    var btnSubmit: XCUIElement {
        return app.buttons[.loginVC_accessibility_btnSubmit]
    }
}


// Navigations
extension LoginScreen {
    
    func fillCredentials() {
        self.txtEmail.tap()
        self.txtEmail.clearText()
        self.txtEmail.typeText("naman@gmail.com")
        
        self.txtPassword.tap()
        self.txtPassword.clearText()
        self.txtPassword.typeText("Admin#123")
    }
    
    func launchHomeScreen() -> HomeScreen {
        XCTAssertTrue(self.rootElement.waitForExistence(timeout: 5))

        // Check element is exists
        XCTAssertTrue(self.txtEmail.exists)
        XCTAssertTrue(self.txtPassword.exists)
        XCTAssertTrue(self.btnSubmit.exists)
        
        fillCredentials()
        
        self.btnSubmit.tap()
        return HomeScreen(app: self.app)
    }
}
