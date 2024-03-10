//
//  Lec_Stepper.swift #41
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 09/03/24.
//

import SwiftUI

struct Lec_Stepper: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0.0

    var body: some View {
        VStack(spacing: 50){
            Stepper("Stepper Value: \(stepperValue)", value: $stepperValue)

            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100, alignment: .center)

            Stepper("Width") {
                incrementWidth(amount: 25) // Call the incrementWidth function
            } onDecrement: {
                incrementWidth(amount: -25) // Call with a negative value
            }
        }
    }

    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    Lec_Stepper()
}

