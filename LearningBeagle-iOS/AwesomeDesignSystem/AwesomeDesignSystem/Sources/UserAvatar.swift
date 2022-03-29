//
//  UserAvatar.swift
//  AwesomeDesignSystem
//
//  Created by Bruno Alves on 28/03/22.
//

import UIKit

public class UserAvatar: UIView {
    
    let dimension: CGFloat = 100
    
    lazy var circleView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.clipsToBounds = true
        view.layer.cornerRadius = dimension / 2
        return view
    }()
    
    lazy var photo: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    public init(with urlAddress: String) {
        super.init(frame: .zero)
        photo.loadFrom(URLAddress: urlAddress)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        addSubview(circleView)
        circleView.addSubview(photo)
        
        NSLayoutConstraint.activate([
            circleView.widthAnchor.constraint(equalToConstant: dimension),
            circleView.heightAnchor.constraint(equalToConstant: dimension),
            photo.widthAnchor.constraint(equalToConstant: dimension),
            photo.heightAnchor.constraint(equalToConstant: dimension)
        ])
    }
}
