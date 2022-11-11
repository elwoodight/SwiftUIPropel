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
            Spacer()
            LogoView()
            Spacer()
            UserInputView()
            Spacer()
            LoginButtonView()
            Spacer()
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
            HStack {
                TextField("Username",text: $viewmodel.userInformation.username)
                    .textFieldStyle(.plain)
                    .padding()
            }
            .border(.black)
            .padding()
            
            HStack {
            TextField("Password", text: $viewmodel.userInformation.password)
                .textFieldStyle(.plain)
                .padding()
            }
            .border(.black)
            .padding()
        }
        .padding()
    }
}

struct LoginButtonView: View {
    @ObservedObject var viewmodel: Phase1ViewModel = Phase1ViewModel()
    var body: some View {
        Button(action: {
            if (viewmodel.userInformation.username != "") && (viewmodel.userInformation.password != "") {
                viewmodel.canLogin = true
            } else {
                viewmodel.canLogin = false
            }
        },
        label: {
            HStack {
                Text("Login")
                    .frame(minWidth: 1, idealWidth: .infinity, maxWidth: .infinity)
                    .foregroundColor(.black)
            }
            .padding()
        })
        .buttonStyle(.plain)
        .border(.black)
        .padding()

    }
    
    
}
