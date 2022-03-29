//
//  MyButtonAction.swift
//  BeagleLearningServerDriven
//
//  Created by Bruno Alves on 28/03/22.
//

import Foundation
import Beagle
import UIKit

struct MyButtonAction: Action {
    
    private let message: String
    
    init(message: String) {
        self.message = message
    }
    
    func execute(controller: BeagleController, origin: UIView) {
        let alert = UIAlertController()
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        controller.present(alert, animated: true, completion: nil)
    }
}
