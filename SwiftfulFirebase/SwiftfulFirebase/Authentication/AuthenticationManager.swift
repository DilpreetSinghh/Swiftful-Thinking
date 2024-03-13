//
//  AuthenticationManager.swift
//  SwiftfulFirebase
//
//  Created by Dilpreet Singh on 13/03/24.
//

import Foundation
import FirebaseAuth

final class AuthenticationManager{
    
    struct AuthDataResultModel{
        let uid: String
        let email: String?
        let photoUrl: String?
        
        init(user: User){
            self.uid = user.uid
            self.email = user.email
            self.photoUrl = user.photoURL
        }
    }
    
    
    static let shared = AuthenticationManager()
    private init(){}
    
    func createUser(email: String, password: String) async throws {
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        
    }
    
}
