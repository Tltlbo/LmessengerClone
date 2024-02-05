//
//  HomeViewModel.swift
//  LMessenger
//
//  Created by 박진성 on 2/5/24.
//

import Foundation

class HomeViewModel : ObservableObject {
    @Published var myUser : User?
    @Published var users : [User] = [.stub1, .stub2]
}
