//
//  LazyBox.swift
//  BeagleLearningServerDriven
//
//  Created by Bruno Alves on 25/03/22.
//

import Beagle

public class LazyBox {
    public static func make(path: String) -> BeagleView {
        return BeagleView(.remote(.init(url: path, fallback: nil, additionalData: nil)))
    }
}
