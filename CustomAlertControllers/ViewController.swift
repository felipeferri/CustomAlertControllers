//
//  ViewController.swift
//  CustomAlertControllers
//
//  Created by Felipe Augusto Sviaghin Ferri on 22/11/17.
//  Copyright © 2017 Felipe Augusto Sviaghin Ferri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func firstAlertButtonTap(_ sender: UIButton) {
        presentAlert(title: "Error", message: "This is an alert dialog with one button", leftTitle: nil, rightTitle: "Ok")
    }
    
    @IBAction func secondAlertButtonTap(_ sender: UIButton) {
        presentAlert(title: "Error", message: "This is an alert dialog with two buttons", leftTitle: "Cancel", rightTitle: "Ok")
    }
    
    @IBAction func thirdAlertButtonTap(_ sender: UIButton) {
        presentAlert(title: "Error", message: "This is an alert dialog with handler action", leftTitle: "Cancel", rightTitle: "Ok",
                     leftAction: {
            self.presentAlert(title: "Whoa", message: "You pressed the Cancel button", leftTitle: nil, rightTitle: "Ok")
        }, rightAction: {
            self.presentAlert(title: "Whoa", message: "You pressed the Ok button", leftTitle: nil, rightTitle: "Ok")
        })
    }
}

