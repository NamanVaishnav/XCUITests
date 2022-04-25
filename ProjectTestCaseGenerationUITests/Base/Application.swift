//
//  Application.swift
//  ProjectTestCaseGenerationUITests
//
//  Created by Naman Vaishnav on 24/04/22.
//

import Foundation
import XCTest

class Application: XCUIApplication {
    override init() {
        super.init()
        self.launchArguments += ["UI_TESTING"]
    }
}
