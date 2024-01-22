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
            
            Rectangles(isStartingState: $isStartingState, colorOfRectangle: $colorOfRectangle)
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
    @Binding var colorOfRectangle: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(colorOfRectangle)
            .frame(width: 150, height: 200)
    }
}







