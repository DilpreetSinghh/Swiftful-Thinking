//
//  Lec_Conditional_Statements.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 22/01/24.
//

import SwiftUI

struct Lec_Conditional_Statements: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            if isLoading{
                ProgressView()
                    .padding()
            }
            
            // Different Part
            
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
        /// Means if `showCircle` is true (as showCircle is a bool), then the statement will execute
            if showCircle && !showRectangle {
                Circle()
                    .frame(width: 100, height: 100)
                    .padding()
            } else if showRectangle && !showCircle{
                Rectangle()
                    .frame(width: 150, height: 100)
                    .padding()
            }  else if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 100.0)
                    .frame(width: 150, height: 100)
                    .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    Lec_Conditional_Statements()
}
