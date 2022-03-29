//
//  CustomButton.swift
//  BeagleLearningServerDriven
//
//  Created by Bruno Alves on 28/03/22.
//

import UIKit
import Beagle
import AwesomeDesignSystem

struct CustomButtonWidget: Widget {
    
    let title: String
    let background: String
    let cornerRadius: Float
    var widgetProperties: WidgetProperties
    
    enum CodingKeys: String, CodingKey {
        case title
        case background
        case cornerRadius
        case widgetProperties
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        title = try container.decode(String.self, forKey: .title)
        background = try container.decode(String.self, forKey: .background)
        cornerRadius = try container.decode(Float.self, forKey: .cornerRadius)
        widgetProperties = try WidgetProperties(from: decoder)
    }
    
    func toView(renderer: BeagleRenderer) -> UIView {
        
        let customButton = CustomButton(
            title: title,
            background: UIColor(hex: background) ?? .red,
            cornerRadius: CGFloat(cornerRadius)
        )
        customButton.sizeToFit()
        return customButton
    }
}
