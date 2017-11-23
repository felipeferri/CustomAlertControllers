//
//  SpiderAlertViewController.swift
//  SaleMoving
//
//  Created by Felipe Augusto Sviaghin Ferri on 19/8/17.
//  Copyright © 2017 Felipe Augusto Sviaghin Ferri. All rights reserved.
//

import UIKit

class CustomAlertViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    var leftActionHandler: (()->())?
    var rightActionHandler: (()->())?
    
    var leftTitle: String?
    var rightTitle: String?
    
    var alertTitle: String?
    var alertMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        if let leftTitle = leftTitle {
            leftButton.setTitle(leftTitle, for: .normal)
            leftButton.isHidden = false
        } else {
            leftButton.isHidden = true
        }
        
        if let rightTitle = rightTitle {
            rightButton.setTitle(rightTitle, for: .normal)
            rightButton.isHidden = false
        } else {
            rightButton.isHidden = true
        }
        
        titleLabel.text = alertTitle
        messageLabel.text = alertMessage
    }
    
    @IBAction func rightButtonTap(_ sender: UIButton) {
        presentingViewController?.dismiss(animated: true) {
            self.rightActionHandler?()
        }
    }
    
    @IBAction func leftButtonTap(_ sender: UIButton) {
        presentingViewController?.dismiss(animated: true) {
            self.leftActionHandler?()
        }
    }
    
    
}
