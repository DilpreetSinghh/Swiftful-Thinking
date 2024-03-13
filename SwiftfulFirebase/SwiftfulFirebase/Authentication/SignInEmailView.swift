//
//  SignInEmailView.swift
//  SwiftfulFirebase
//
//  Created by Dilpreet Singh on 13/03/24.
//

import SwiftUI

final class SignInEmailViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
}

struct SignInEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Email...", text: $viewModel.email)
                    .padding()
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(10)
                
                SecureField("Password...", text: $viewModel.password)
                    .padding()
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(10)
                
                
                Button{
                    
                } label: {
                    Text("Sign In With Email")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Sign In With Email")
        }
    }
}

struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignInEmailView()
    }
}


#Preview {
    SignInEmailView()
}
