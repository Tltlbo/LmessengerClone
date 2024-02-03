//
//  Service.swift
//  LMessenger
//
//  Created by 박진성 on 2/3/24.
//

import Foundation

protocol ServiceType {
    var authService : AuthenticationServiceType {get set}
}

class Services : ServiceType {
    var authService: AuthenticationServiceType
    
    init() {
        self.authService = AuthenticationService()
    }
}

class StubService : ServiceType {
    var authService: AuthenticationServiceType = StubAuthenticationService()
}
