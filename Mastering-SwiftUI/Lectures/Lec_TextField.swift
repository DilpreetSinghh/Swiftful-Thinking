//
//  Lec_TextField.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 24/01/24.
//

import SwiftUI

struct Lec_TextField: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack{
            VStack{
                TextField("type here ".capitalized, text: $textFieldText)
              //      .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .foregroundStyle(Color.red)
                    .font(.headline)
                    .cornerRadius(10)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(Color.white)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .font(.headline)
                        .cornerRadius(10)
                }
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Lec TextField")
        }

    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 2 {
            return true
        }
        return false
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""

    }
}

#Preview {
    Lec_TextField()
}
