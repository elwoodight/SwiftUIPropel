//
//  Phase1ViewModel.swift
//  SwiftUI Propel
//
//  Created by Joshua Buchanan on 11/11/22.
//

import Foundation
import SwiftUI

public struct LoginInformation {
    var username: String
    var password: String
}

class Phase1ViewModel: ObservableObject {
    
    @Published var canLogin: Bool = false
    @Published var userInformation: LoginInformation = LoginInformation(username: "", password: "")
    
}
