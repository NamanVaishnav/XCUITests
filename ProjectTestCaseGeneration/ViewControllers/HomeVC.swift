//
//  HomeVC.swift
//  ProjectTestCaseGeneration
//
//  Created by Naman Vaishnav on 24/04/22.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var lblHome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAccessibility()
    }
    
    fileprivate func setupAccessibility() {
        self.view.accessibilityIdentifier = .homeVC_accessibility_viewController
        self.lblHome.accessibilityIdentifier = .homeVC_accessibility_lblHome
    }
}
