//
//  Lec_Ternary_Operator.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 22/01/24.
//

import SwiftUI

struct Lec_Ternary_Operator: View {
    
    @State private var isStartingState: Bool = false
    @State private var colorOfRectangle: Color = .green
    
    var body: some View {
        VStack {
            Button(action: toggleState) {
                Text("Button: \(isStartingState.description)")
            }
            .padding()
            
            Rectangles(isStartingState: $isStartingState, Color_of_Rectangle: $colorOfRectangle)
        }
        .onAppear {
            updateColor()
        }
    }
    
    private func toggleState() {
        isStartingState.toggle()
        updateColor()
    }
    
    private func updateColor() {
        colorOfRectangle = isStartingState ? .red : .blue
    }
}


#Preview {
    Lec_Ternary_Operator()
}


struct Rectangles: View {
    
    @Binding var isStartingState: Bool
    @Binding var Color_of_Rectangle: Color
    
    var body: some View {
        Group {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color_of_Rectangle)
                .frame(width: 150, height: 100)
            
                .onAppear {
                    if isStartingState {
                        Color_of_Rectangle = Color.red
                    } else {
                        Color_of_Rectangle = Color.blue
                    }
                }
        }
    }
}







