//
//  BalanceView.swift
//  BeagleLearningServerDriven
//
//  Created by Bruno Alves on 28/03/22.
//

import AwesomeDesignSystem
import Beagle
import UIKit

struct BalanceView: Widget {
    
    let balance: String
    var widgetProperties: WidgetProperties
    
    enum CodingKeys: String, CodingKey {
        case balance
        case widgetProperties
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        balance = try container.decode(String.self, forKey: .balance)
        widgetProperties = try WidgetProperties(from: decoder)
    }
    
    func toView(renderer: BeagleRenderer) -> UIView {
        let view = Balance(balance)
        return AutoLayoutWrapper(view: view)
    }
}
