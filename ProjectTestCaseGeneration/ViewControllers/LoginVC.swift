//
//  LoginVC.swift
//  ProjectTestCaseGeneration
//
//  Created by Naman Vaishnav on 24/04/22.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAccessibility()
    }
    
    fileprivate func setupAccessibility() {
        self.view.accessibilityIdentifier = .loginVC_accessibility_viewController
        self.txtEmail.accessibilityIdentifier = .loginVC_accessibility_txtEmail
        self.txtPassword.accessibilityIdentifier = .loginVC_accessibility_txtPassword
        self.btnSubmit.accessibilityIdentifier = .loginVC_accessibility_btnSubmit
    }

    @IBAction func actionSubmit(_ sender: Any) {
        
        
    }
    

}

