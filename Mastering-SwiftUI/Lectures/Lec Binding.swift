//
//  Lec Binding.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 22/01/24.
//

import SwiftUI

struct Lec_Binding: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Original Title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .font(.largeTitle)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
            

        }
    }
}

#Preview {
    Lec_Binding()
}
/// ButtonView is subview of "Lec Binding"
struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    
    var body: some View {
        
                
        VStack {
            HStack{
                Spacer()
                Button(action: {
                    backgroundColor = Color.orange
                    title = "Orange Button got Hit!"
                }, label: {
                    Text("Orange")
                        .foregroundStyle(Color.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.blue)
                        .cornerRadius(15)
                    
                })
                Spacer()
                Button(action: {
                    backgroundColor = Color.purple
                    title = "Purple Button got Hit!"
                }, label: {
                    Text("Purple")
                        .foregroundStyle(Color.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.blue)
                        .cornerRadius(15)
                    
                })
                Spacer()
            }
            
            Button(action: {
                backgroundColor = Color.green
                title = "Original Title"
            }, label: {
                Text("Reset")
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.blue)
                    .cornerRadius(15)
                
            })
            
        }
    }
}
