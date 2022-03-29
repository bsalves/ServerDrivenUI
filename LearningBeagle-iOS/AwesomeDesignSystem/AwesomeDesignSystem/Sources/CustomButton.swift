//
//  CustomButton.swift
//  AwesomeDesignSystem
//
//  Created by Bruno Alves on 28/03/22.
//

import UIKit

public class CustomButton: UIButton {
    
    let title: String
    let background: UIColor
    let cornerRadius: CGFloat
    
    public init(title: String, background: UIColor, cornerRadius: CGFloat) {
        self.title = title
        self.background = background
        self.cornerRadius = cornerRadius
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        self.setTitle(title, for: .normal)
        self.backgroundColor = background
        self.layer.cornerRadius = cornerRadius
        self.setTitleColor(.blue, for: .normal)
    }
    
}
