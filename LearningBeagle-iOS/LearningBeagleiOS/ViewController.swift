//
//  ViewController.swift
//  LearningBeagleiOS
//
//  Created by Bruno Alves on 25/03/22.
//

import AwesomeDesignSystem
import UIKit
import Beagle
import BeagleLearningServerDriven

class ViewController: UIViewController {
    
    lazy var userAvatar: UIView = {
        let view =  BeagleView(
            LazyComponent(
                path: "/user-avatar",
                initialState: Text("carregando...")
            )
        )
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var balanceView: UIView = {
        let view = BeagleView(
            LazyComponent(
                path: "/balance",
                initialState: Text("Carregando...")
            )
        )
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.alignment = .center
        stack.spacing = 18
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stack)
        stack.addArrangedSubview(userAvatar)
        stack.addArrangedSubview(balanceView)
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userAvatar.widthAnchor.constraint(equalToConstant: 100),
            userAvatar.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

