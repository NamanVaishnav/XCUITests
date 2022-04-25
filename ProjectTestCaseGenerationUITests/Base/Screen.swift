//
//  Screen.swift
//  ProjectTestCaseGenerationUITests
//
//  Created by Naman Vaishnav on 24/04/22.
//

import Foundation
import XCTest

open class Screen {
    
    // XCUIApplication
    let app: XCUIApplication
    
    // init
    public init(app: XCUIApplication) {
        self.app = app
    }
    
    // rootElement
    var rootElement: XCUIElement {
        fatalError("subclass should override rootElement")
    }
}


//public class setupObserver {
//    private static var observer: TestCaseObserver?
//}
