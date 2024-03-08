//
//  Lec_ColorPicker.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 08/03/24.
//

import SwiftUI

struct Lec_ColorPicker: View {
    @State var background: Color = .green
    var body: some View {
        ZStack{
            background.ignoresSafeArea()
            
            ColorPicker(selection: $background,
                        supportsOpacity: true,
                        label: {Text("Select a Color")})
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
            .foregroundStyle(Color.white)
            .font(.headline)
            .padding()

        }
    }
}

#Preview {
    Lec_ColorPicker()
}
