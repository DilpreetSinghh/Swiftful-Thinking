//
//  Lec_Teranary_Operator.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 22/01/24.
//

import SwiftUI

struct Lec_Teranary_Operator: View {
    
    @State var isStartingState: Bool = false
    @State var Color_of_Rectangle: Color = Color.green
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            }
            rectangles(isStartingState: $isStartingState, Color_of_Rectangle: $Color_of_Rectangle)
            Spacer()
        }
    }
}



#Preview {
    Lec_Teranary_Operator()
}

struct rectangles: View{
    
    @Binding var isStartingState: Bool
    @Binding var Color_of_Rectangle: Color
    
    var body: some View{
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color_of_Rectangle = Color.green)
            .frame(width: 150, height: 100)
        
        if isStartingState{
            Color_of_Rectangle = Color.red
        } else{
            Color_of_Rectangle = Color.blue
        }
    }
}
