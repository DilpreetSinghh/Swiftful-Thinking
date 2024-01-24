//
//  Lec_Navigation.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 23/01/24.
//

import SwiftUI

struct Lec_Navigation: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world", destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            // we have large and inline option too in navigationBarTitleDisplayMode
//            .navigationBarHidden(true)
//            // To hide navigationBar
            
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                            .foregroundStyle(Color.blue)
                        Image(systemName: "flame.circle.fill")
                            .foregroundStyle(Color.red)
                            
                    },
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: { Image(systemName: "gear")
                        })
                    .accentColor(.blue)
                )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var Dismiss
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
        
            VStack{
                Button("Back Button") {
                    Dismiss()
                }
                NavigationLink("Click here for 3rd", destination: Text("3rd Screen"))
            }
        }
    }
}

#Preview {
    Lec_Navigation()
}
