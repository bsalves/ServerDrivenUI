//
//  Networking.swift
//  BeagleLearningNetworkingSDK
//
//  Created by Bruno Alves on 25/03/22.
//

import Beagle

public class NetworkingFactory {
    
    private lazy var networkClient: Beagle.NetworkClient = {
        return NetworkClientDefault(
            dependencies: BeagleDependencyLogger()
        )
    }()
    
    public init() { }
    
    public func make() -> Beagle.NetworkClient {
        return networkClient
    }
    
}
