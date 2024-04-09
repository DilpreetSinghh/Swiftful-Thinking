//
//  Lec_onTapGesture.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 09/04/24.
//
 
import SwiftUI

struct Lec_onTapGesture: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40){
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundStyle(isSelected ? Color.green : Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture(count: 2, perform: { // used in places like -> 2 taps to quits
                    isSelected.toggle()
                })
            /*
             simple version
             .onTapGesture {
                 isSelected.toggle()
             }
             */
            
            
            Spacer()
        }.padding(40)
    }
}

#Preview {
    Lec_onTapGesture()
}
