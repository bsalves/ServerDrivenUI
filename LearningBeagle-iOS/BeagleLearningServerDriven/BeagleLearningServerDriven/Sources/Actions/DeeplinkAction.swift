//
//  DeeplinkAction.swift
//  BeagleLearningServerDriven
//
//  Created by Bruno Alves on 28/03/22.
//

import UIKit.UIView
import Beagle

struct DeeplinkAction: Action {
    
    private let deeplink: String
    
    init(deeplink: String) {
        self.deeplink = deeplink
    }
    
    func execute(controller: BeagleController, origin: UIView) {
        print("go to deeplink: \(deeplink)")
    }
}
