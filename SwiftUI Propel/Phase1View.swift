//
//  Phase1View.swift
//  SwiftUI Propel
//
//  Created by Joshua Buchanan on 11/11/22.
//

import Foundation
import SwiftUI

struct Phase1View: View {
    
    @StateObject var viewModel: Phase1ViewModel = Phase1ViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            LogoView()
            Spacer()
            UserInputView()
            Spacer()
            LoginButtonView()
            
        }
    }
}

struct LogoView: View {
    
    var body: some View{
        HStack {
            Spacer()
            VStack {
                Text("logo")
                    .padding()
                    .border(.black)
            }
            Spacer()
        }
    }
}

struct UserInputView: View {
    
    @ObservedObject var viewmodel: Phase1ViewModel = Phase1ViewModel()
    
    var body: some View {
        VStack {
            TextField("Username", text: $viewmodel.userInformation.username)
            TextField("Password", text: $viewmodel.userInformation.password)
        }
    }
}

struct LoginButtonView: View {
    @ObservedObject var viewmodel: Phase1ViewModel = Phase1ViewModel()
    var body: some View {
        Button("Login", action: {
            if (viewmodel.userInformation.username != "") && (viewmodel.userInformation.password != "") {
                viewmodel.canLogin = true
            } else {
                viewmodel.canLogin = false
            }
        })
    }
    
    
}
