//
//  NetworkLog.swift
//  BeagleLearningNetworkingSDK
//
//  Created by Bruno Alves on 25/03/22.
//

import Beagle

class BeagleDependencyLogger: DependencyLogger {
    var logger: BeagleLoggerType {
        BeagleLog()
    }
}

class BeagleLog: BeagleLoggerType {
    func log(_ log: LogType) {
        print(log.message)
    }
}
