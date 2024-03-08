//
//  Lec_Picker_One.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 25/02/24.
//

import SwiftUI

struct Lec_Picker_One: View {
    @State var selection: String = "1" // This state will keep track of the selected item
    
    

    var body: some View {
        VStack {
            HStack{
                Text("Age: ")
                Text("Selection")
            }
            Picker("Choose an option", selection: $selection) {
                ForEach(18..<100){ number in
                    Text("\(number)").tag("\(number)")
                }
                
            }
            .pickerStyle(WheelPickerStyle())
            .colorMultiply(Color.snow)
        }
    }
}


#Preview {
    Lec_Picker_One()
}
