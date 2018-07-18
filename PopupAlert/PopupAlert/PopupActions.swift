//
//  PopupActions.swift
//  PopupAlert
//
//  Created by Nagesh on 18/07/18.
//  Copyright © 2018 Nagesh Kumar Mishra. All rights reserved.
//

import UIKit

extension UIViewController {
    func popupAlert(title: String?, message: String?, alertType: UIAlertControllerStyle ,actionTitles: [String?], actions: [((UIAlertAction) -> Void)?]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: alertType)
        for (index, title) in actionTitles.enumerated() {
            if alertType == .actionSheet , title == "Cancel" {
                let action = UIAlertAction(title: title, style: .destructive, handler: actions[index])
                alert.addAction(action)
                
            } else {
                let action = UIAlertAction(title: title, style: .default, handler: actions[index])
                alert.addAction(action)
            }
        }
        self.present(alert, animated: true, completion: nil)
    }
}
