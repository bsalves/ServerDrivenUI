//
//  ServerDriven.swift
//  BeagleLearningServerDriven
//
//  Created by Bruno Alves on 25/03/22.
//

import Beagle
import BeagleLearningNetworkingSDK

public class ServerDriven {
    
    // MARK: - Private properties
    
    private let dependencies: BeagleDependencies
    private let networkClient: NetworkClient
    
    // MARK: - Public properties
    
    public static var shared = ServerDriven()
    
    public var baseUrl: URL? {
        didSet {
            dependencies.urlBuilder = UrlBuilder(baseUrl: baseUrl)
        }
    }
    
    // MARK: - Intializer
    
    init(
        dependencies: BeagleDependencies = BeagleDependencies(),
        networkClient: NetworkClient = NetworkingFactory().make()
    ) {
        self.dependencies = dependencies
        self.networkClient = networkClient
        setup()
        registerComponents()
    }
    
    // MARK: - Public methods
    
    public func setup() {
        dependencies.urlBuilder = UrlBuilder(baseUrl: baseUrl)
        dependencies.networkClient = networkClient
        Beagle.dependencies = dependencies
    }
    
    public func registerComponents() {
        
        // Widgets
        Beagle.dependencies.decoder.register(component: BalanceView.self)
        Beagle.dependencies.decoder.register(component: UserAvatarWidget.self)
        Beagle.dependencies.decoder.register(component: CustomButtonWidget.self, named: "CustomButton")
        
        // Actions
        Beagle.dependencies.decoder.register(action: DeeplinkAction.self)
        Beagle.dependencies.decoder.register(action: MyButtonAction.self)
    }
}
