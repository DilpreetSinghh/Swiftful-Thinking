//
//  Lec_Text.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 19/01/24.
//

import SwiftUI

struct Lec_Text: View {
    var body: some View {
        Text("Hello, Developer! This is the SwiftUI learning Files especially designed for developers")
            .font(.largeTitle)
            /// .foregroundColor(Color(hue: 0.297, saturation: 1.0, brightness: 0.598))
            /// .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.accentColor)
           /// .font(.system(size: 32, weight: .semibold, design: .rounded))
            /// .baselineOffset(50.0)
            ///.kerning(2)
            /// .multilineTextAlignment(.center)
            .foregroundStyle(Color.green)
            .frame(width: 200, height: 200, alignment: .center)
            .minimumScaleFactor(0.1)
           /// ten percent = 0.1
    }
}

#Preview {
    Lec_Text()
}
