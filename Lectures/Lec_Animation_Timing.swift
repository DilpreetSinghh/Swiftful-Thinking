//
//  Lec_Animation_Timing.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 23/01/24.
//

import SwiftUI

struct Lec_Animation_Timing: View {
    
    @State var isAnimating: Bool = false
    @State var timing: Double = 2

    var body: some View {
        Button("button") {
            isAnimating.toggle()
        }
        
        GroupOfRectangles(isAnimating: $isAnimating, timing: $timing)
    }
}

#Preview {
    Lec_Animation_Timing()
}

struct GroupOfRectangles: View {
    
    @Binding var isAnimating: Bool
    @Binding var timing: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimating ? 300 : 50, height: 100)
            .animation(.spring(Spring(response: timing, dampingRatio: 0.5)), value: self.isAnimating)
        /// dampingRatio is stretch of frame than original size to give spring effect
        
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimating ? 300 : 50, height: 100)
            .animation(.linear(duration: timing), value: self.isAnimating)
        
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimating ? 300 : 50, height: 100)
            .animation(.easeInOut(duration: timing), value: self.isAnimating)
        
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimating ? 300 : 50, height: 100)
            .animation(.easeIn(duration: timing), value: self.isAnimating)
        
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: isAnimating ? 300 : 50, height: 100)
            .animation(.easeOut(duration: timing), value: self.isAnimating)
    }
}
