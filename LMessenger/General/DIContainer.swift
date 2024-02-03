//
//  DIContainer.swift
//  LMessenger
//
//  Created by 박진성 on 2/3/24.
//

import Foundation

class DIContainer : ObservableObject {
    var services : ServiceType
    
    init(services: ServiceType) {
        self.services = services
    }
}
