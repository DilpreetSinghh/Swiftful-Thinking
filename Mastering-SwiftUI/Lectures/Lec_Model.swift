//
//  Lec_Model.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 11/04/24.
//

import SwiftUI

struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}


struct Lec_Model: View {
    
    @State var users: [UserModel] = [
        // "Dilpreet", "User1", "User2"
        UserModel(displayName: "Dilpreet", userName: "dilpreetsingh_0", followerCount: 900, isVerified: true),
        UserModel(displayName: "User1", userName: "user1code", followerCount: 50, isVerified: false),
        UserModel(displayName: "User2", userName: "user29", followerCount: 870, isVerified: false)
    ]
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(users) { user in
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 35, height: 35)
                            .foregroundStyle(.heart)
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text(user.displayName)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                if user.isVerified{
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundStyle(.blue)
                                }
                            }
                            Text("@\(user.userName)")
                                .foregroundStyle(.blue)
//                            Text(user.id)
//                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                        VStack{
                            Text("\(user.followerCount)")
                            Text("Followers")
                        }.padding(.horizontal, 15)
                    }
                    .padding(.vertical, 5)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

#Preview {
    Lec_Model()
}
