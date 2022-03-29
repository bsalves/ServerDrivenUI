//
//  Balance.swift
//  AwesomeDesignSystem
//
//  Created by Bruno Alves on 28/03/22.
//

import UIKit

public class Balance: UIView {
    
    private var balance: String
    
    lazy private var label: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = balance
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    public init(_ balance: String) {
        self.balance = balance
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        self.backgroundColor = .gray
        self.layer.cornerRadius = 15
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8)
        ])
    }
}
