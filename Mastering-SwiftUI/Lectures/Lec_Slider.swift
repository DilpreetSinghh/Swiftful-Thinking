//
//  Lec_Slider.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 10/03/24.
//

import SwiftUI

struct Lec_Slider: View {
    
    @State var sliderValueType: Double = 10
    
    var body: some View {
        Text("Slider Value: \(String(format: "%.0f", sliderValueType))")
        Slider(
            value: $sliderValueType,
            in: 0...100,
            step: 10.0
        )
            .tint(.green)
    }
}

#Preview {
    Lec_Slider()
}
