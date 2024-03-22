# tabView

Different Format Styles of writing or creating Tabs in HomeScreen


### Simple Tab

@TabNavigator{
    @Tab("Simple TabView Code"){
        ```swift
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
    
    @Tab("Simple TabView Preview"){
        ![Industry TabView preview](TabView_two_preview)
    }
}

# Industry way TableView

@TabNavigator{
    @Tab("Industry TabView Code"){
        ```swift
        import SwiftUI

        struct Lec_TabView: View {
        
        @State var selectedTab: Int = 1 
        // Make what tab should open first
        
            var body: some View {
                
                TabView(selection: $selectedTab) {                
                    HomeView()                    
                    BrowseTab()                    
                    ProfileTab()                    
                }
            }
        }

        #Preview {
            Lec_TabView()
        }

        struct HomeView: View {
            var body: some View {
                ZStack{
                    Color.heart
                    Text("Home Tab")
                        .font(.title)
                        .foregroundStyle(.white)
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
                    Color.teal
                    Text("Profile Tab")
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

    ```
    }
    
    @Tab("Industry TabView Preview"){
        ![Industry TabView preview](TabView_two_preview)
    }
}

# Switch for TabView

@TabNavigator{
    @Tab("Switch TabView Code"){
        ```swift
        import SwiftUI

        struct Lec_TabView: View {
            
            @State var selectedTab: Int = 1
            // Make what tab should open first
            
            var body: some View {
                TabView(selection: $selectedTab) {
                    HomeView(selectedTab: $selectedTab)
                    
                    BrowseTab()
                    
                    ProfileTab()
                }
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
    ```
    }
    
    @Tab("Switch TabView Preview"){
        ![Switch TabView preview](TabView_three_preview)
    }
}

# Scrollable View

like insta stack

@TabNavigator{
    @Tab("Scrollable TabView Code"){
        ```swift
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
                    RadialGradient(gradient: Gradient(colors: [Color.red, Color.indigo]), center: .center, startRadius: 10, endRadius: 200)
                )
                .frame(height: 400)
                .tabViewStyle(PageTabViewStyle())
            }
        }
    ```
    }
    
    @Tab("Scrollable TabView Preview"){
        ![Scrollable TabView preview](TabView_four_preview)
    }
}
