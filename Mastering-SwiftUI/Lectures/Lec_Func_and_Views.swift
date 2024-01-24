//
//  Lec_Func_and_Views.swift
//  Mastering SwiftUI
//  Extracting function and Views File
//  Created by Dilpreet Singh on 16/01/24.
//

import SwiftUI

struct Lec_Func_and_Views: View {
    
    @State var backgroundColor: Color = Color.green
    
    
    var body: some View {
        ZStack{
            //background Layer
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    /// all logic used here will embeded in another view named as body
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
            })
        }
    }
    
    /// addding all logic of button in below func and it  is outside the `var body: some View`
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    Lec_Func_and_Views()
}
