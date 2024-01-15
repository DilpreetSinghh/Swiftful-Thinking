//
//  Lec_State.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 16/01/24.
//

import SwiftUI

struct Lec_State: View {
    
    @State var backgroundColor: Color = Color.green
    @State private var tapCount1 = 0
    @State private var tapCount2 = 0
    @State private var tapCount3 = 0
    @State var myCaption: String = "Button's Status"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content layer
            VStack(spacing: 20){
                Text("Button press")
                    .font(.title)
                Text("\(myCaption) and Total Presses are \(count) ")
                    .font(.headline)
                    .italic()
                
                VStack(spacing: 20){
                    Button("Button 1 count: \(tapCount1)") {
                        tapCount1 += 1
                        backgroundColor = .red
                        myCaption = "Button 1 was Pressed"
                        count += 1
                    }
                    
                    Button("Button 2 count: \(tapCount2)") {
                        tapCount2 += 1
                        backgroundColor = .purple
                        myCaption = "Button 2 was Pressed"
                        count += 1
                    }
                    
                    Button("Button 3 count: \(tapCount3)") {
                                tapCount3 += 1
                        myCaption = "Button 3 was Pressed"
                        backgroundColor = .blue
                        count += 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    Lec_State()
}
