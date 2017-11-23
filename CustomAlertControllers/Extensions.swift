//
//  Extensions.swift
//  CustomAlertControllers
//
//  Created by Felipe Augusto Sviaghin Ferri on 22/11/17.
//  Copyright © 2017 Felipe Augusto Sviaghin Ferri. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func present(_ error: Error, handle: (()->())? = nil) {
        presentAlert(title: "Error", message: error.localizedDescription, leftTitle: nil, rightTitle: "Ok", leftAction: nil, rightAction: handle)
    }
    
    func presentAlert(title: String, message: String, leftTitle: String?,
                                rightTitle: String?, leftAction: (()->())? = nil, rightAction: (()->())? = nil) {
        let alert = CustomAlertViewController(nibName: "CustomAlertViewController", bundle: Bundle.main)
        alert.alertTitle = title
        alert.alertMessage = message
        alert.leftTitle = leftTitle?.uppercased()
        alert.rightTitle = rightTitle?.uppercased()
        alert.leftActionHandler = leftAction
        alert.rightActionHandler = rightAction
        alert.modalTransitionStyle = .crossDissolve
        alert.modalPresentationStyle = .overCurrentContext
        present(alert, animated: true, completion: nil)
    }
}
