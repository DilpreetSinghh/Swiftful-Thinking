//
//  AuthenticationView.swift
//  SwiftfulFirebase
//
//  Created by Dilpreet Singh on 13/03/24.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Hello")) {
                    Text("Sign In With Email")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
                }
                .padding()
                Spacer()
            }
            .navigationTitle("Sign In") // Add navigation title here
        }
    }
}


#Preview {
    AuthenticationView()
}
