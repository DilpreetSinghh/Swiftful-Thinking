//
//  Lec_Toggle.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 24/02/24.
//

import SwiftUI

struct Lec_Toggle: View {
    @State var ToggleIsOn: Bool = true

    var body: some View {
        VStack {
            HStack{
                Text("Status: ")
                Text(ToggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(isOn: $ToggleIsOn) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.blue))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    Lec_Toggle()
}
