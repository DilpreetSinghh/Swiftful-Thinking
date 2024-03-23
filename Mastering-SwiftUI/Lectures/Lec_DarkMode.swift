//
//  Lec_DarkMode.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 22/03/24.
//

import SwiftUI

struct Lec_DarkMode: View {
    @Environment(\.colorScheme) var colorScheme    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 15){
                    Text("This color is Primary")
                        .foregroundStyle(.primary)
                    Text("This color is Secondary")
                        .foregroundStyle(.secondary)
                    Text("This color is Black")
                        .foregroundStyle(.black)
                    Text("This color is White")
                        .foregroundStyle(.white)
                    Text("This color is Blue")
                        .foregroundStyle(.blue) // visible in both color schemes
                    Text("This custom color is globally adaptive")
                        .foregroundStyle(Color.adaptive) // Custom color in Assets.xcassets
                    Text("This color is locally adaptive")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
                .padding()
            }
            .navigationTitle("Dark Mode")
        }
    }
}

#Preview {
    Lec_DarkMode()
        .preferredColorScheme(.light)
}
#Preview {
    Lec_DarkMode()
        .preferredColorScheme(.dark)
}
