//
//  Lec_Popover.swift
//  Mastering SwiftUI #29
//
//  Created by Dilpreet Singh on 23/01/24.
//


import SwiftUI

struct Lec_Popover: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.title)
                Spacer()
            }
            //Method #1: Sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // Method #2: Transition (Better way of code)
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(.smooth, blendDuration: 20))
//                }
//            }
//            .zIndex(2.0)
//            // this (.zIndex(2.0) change the display order of view (make it over VStack{..}
            
            // Method #3: Animating OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: self.showNewScreen)
            
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var backButton
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.gray
                .ignoresSafeArea()
            
            Button(action: {
                backButton()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "chevron.backward")
                    .foregroundStyle(Color.accentColor)
                    .font(.title)
                    .padding(20)
            })
        }
    }
}


#Preview {
    Lec_Popover()
}
