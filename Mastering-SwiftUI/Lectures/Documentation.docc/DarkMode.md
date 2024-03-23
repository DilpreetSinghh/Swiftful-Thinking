# DarkMode

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

### Frequently used Colors

@TabNavigator{
    @Tab("Text Color Code"){
        ```swift
        import SwiftUI
        struct Lec_TabView: View {
            var body: some View {
                TabView {
                    Text("Home Tab")
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    Text("Browse Tab")
                        .tabItem {
                            Image(systemName: "globe")
                            Text("Browse")
                        }
                    Text("Profile Tab")
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
                        }
                }
            }
        }
    ```
    }
    
    @Tab("Text Color Preview"){
        ![Text Color preview](DarkMode_one_preview)
    }
}

### Adaptive Colors

@TabNavigator{
    @Tab("Adaptive Colorerd Text Code"){
        ```swift
        import SwiftUI
        struct Lec_DarkMode: View {        
        @Environment(\.colorScheme) var colorScheme        
            var body: some View {
                NavigationStack{
                    ScrollView{
                        VStack{
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
    ```
    }
    
    @Tab("Adaptive Colorerd Text Preview"){
        ![Adaptive Colorerd Text preview](DarkMode_two_preview)
    }
}
