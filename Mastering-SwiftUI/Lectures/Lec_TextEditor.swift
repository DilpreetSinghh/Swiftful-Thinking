//
//  Lec_TextEditor.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 22/02/24.
//

import SwiftUI

struct Lec_TextEditor: View {
    
    @State var textEditorText: String = "This is the start"
    @State var savedText: [String] = []
    
    var body: some View {
        NavigationStack{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 150)
                Button {
                    savedText.append(textEditorText)
                    textEditorText = ""
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .padding()
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                ForEach(savedText, id: \.self){ data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .background(Color.gray)
            .navigationTitle("Text Editor")
        }
    }
}

#Preview {
    Lec_TextEditor()
}
