//
//  UserAvatarWidget.swift
//  BeagleLearningServerDriven
//
//  Created by Bruno Alves on 28/03/22.
//

import AwesomeDesignSystem
import Beagle
import UIKit

struct UserAvatarWidget: Widget {
    
    let url: String
    var widgetProperties: WidgetProperties
    
    enum CondingKeys: String, CodingKey {
        case url
        case widgetProperties
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CondingKeys.self)
        url = try container.decode(String.self, forKey: .url)
        widgetProperties = try WidgetProperties(from: decoder)
    }
    
    func toView(renderer: BeagleRenderer) -> UIView {
        let view =  UserAvatar(with: url)
        return AutoLayoutWrapper(view: view)
    }
    
}
