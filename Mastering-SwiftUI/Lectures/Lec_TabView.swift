//
//  Lec_TabView.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 11/03/24.
//

import SwiftUI

struct Lec_TabView: View {
    
    @State var selectedTab: Int = 1
    // Make what tab should open first
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        
        TabView{
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(50)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.heart, Color.blue]), center: .center, startRadius: 30, endRadius: 200)
        )
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
}



struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            Color.heart
            VStack{
                Text("HomeTab")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundStyle(.black)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go To Profile")
                        .fontWeight(.bold)
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
        }
        .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
        }
        .tag(0)
    }
}

struct BrowseTab: View {
    var body: some View {
        ZStack{
            Color.brown
            Text("Browse Tab")
                .fontWeight(.bold)
                .font(.title)
                .foregroundStyle(.black)
        }
        .tabItem {
            Image(systemName: "globe")
            Text("Browse")
        }
        .tag(1)
    }
}

struct ProfileTab: View {
    var body: some View {
        ZStack{
            Color.indigo
            Text("Profile Tab")
                .fontWeight(.bold)
                .font(.title)
                .foregroundStyle(Color.black)
        }
        .tabItem {
            Image(systemName: "person.fill")
            Text("Profile")
        }
        .tag(2)
    }
}


#Preview {
    Lec_TabView()
}
