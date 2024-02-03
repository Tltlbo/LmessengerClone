//
//  AuthenticationViewModel.swift
//  LMessenger
//
//  Created by 박진성 on 2/3/24.
//

import Foundation

enum AuthenticationState {
    case unauthenticated
    case authenticated
}

class AuthenticationViewModel : ObservableObject {
    
    @Published var authenticationState : AuthenticationState = .unauthenticated
    private var container : DIContainer
    
    init(container: DIContainer) {
        self.container = container
    }
}
