//
//  Lec_Button.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 16/01/24.
//

import SwiftUI

struct Lec_Button: View {
    
    @State var title: String = "This is my Title"
    
    var body: some View {
        VStack {
            Text(title)
            
            Button("Press Me") {
                self.title = "'Press Me' Button was Pressed"
            }
            .accentColor(.orange)
            
            Button(action: {
                self.title = "Button #2 was Pressed"
            }, label: {
                Text("Save")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(15)
                            .shadow(radius: 20)
                    )
                
            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .frame(width: 50, height: 50)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("HeartColor"))
                    )
            })
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(Color.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
            })
        }
    }
}

#Preview {
    Lec_Button()
}
