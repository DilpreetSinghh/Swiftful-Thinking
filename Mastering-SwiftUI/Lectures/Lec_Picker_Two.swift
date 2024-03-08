//
//  Lec_Picker_Two.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 25/02/24.
//

import SwiftUI

struct Lec_Picker_Two: View {
    @State private var selection: String = "1"

    var body: some View {
        Picker(selection: $selection, 
               label: 
                HStack{
            Text("Filter: ")
            Text(selection)
        }
            .font(.headline)
            .foregroundStyle(Color.white)
            .padding()
            .background(Color.accentColor)
            .padding(.horizontal)
            .cornerRadius(10)
            .shadow(color: Color.blue.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        ){
            Text("1").tag("1")
            Text("2").tag("2")
        }
        .pickerStyle(MenuPickerStyle())
    }
}

#Preview {
    Lec_Picker_Two()
}
