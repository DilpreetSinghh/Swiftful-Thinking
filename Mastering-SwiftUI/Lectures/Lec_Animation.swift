//
//  Lec_Animation.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 23/01/24.
//

import SwiftUI

struct Lec_Animation: View {
    
    @State var isAnimated: Bool = false
    @State var rectangleColor: Color
    var body: some View {
        VStack{
            Button {
                withAnimation(
                    Animation
                        .default
                        .delay(0.1)){
                    changingColor()
                }
            } label: {
                VStack{
                    Text("Animation Button")
                        .font(.title)
                    Text("Color: \(rectangleColor.description)")
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(rectangleColor)
                .frame(width: isAnimated ? 100 : 250,
                       height: isAnimated ? 100 : 250)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            /// rotate the object while animation is happening ( 360 degree)
                .offset(y: isAnimated ? -100 : -50)
            /// shifts the location of object
            
            Spacer()
            /// if corner radius of rectangle is (height / 2) and height = width, rectangle will look like circle
        }
    }
    
    func changingColor() {
        isAnimated.toggle()
        rectangleColor = isAnimated ? Color.red : Color.green
    }
}

#Preview {
    Lec_Animation(rectangleColor: .red)
}

