//
//  Lec_Documentation.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 25/03/24.
//

import SwiftUI

struct Lec_Documentation: View {
    
    // MARK: PROPERTIES
    // check minimap
    
    @State var data: [String] = [
        "Apples", "Oranges", "Banana"
    ]
    @State var showAlert: Bool = false
    
    
    // MARK: BODY
    
    //
    var body: some View {
        NavigationStack{
            ScrollView{
                Text("Hello")
                ForEach(data, id: \.self){ name in
                    Text(name)
                        .font(.headline)
                }
            }
            .padding()
            .navigationTitle("Documentation")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Alert") {
                        showAlert.toggle()
                    }
                    .fontWeight(.medium)
                    .buttonStyle(.bordered)
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert(text: "Title")
            }
        }
    }
    
    // MARK: FUNCTION
    
    // Folding Comments
    /*
         This is the multi line comment
         use option + command + left arrow key to fold any
         multiple line comment
     */
    
    /// gets an alert with specific title
    ///
    /// This function creates and returns an alert immediately. 
    /// The alert will have a title based on the text parameter.
    /// but it will  NOT have a message
    ///
    /// ```
    /// getAlert(text: "hi children!") -> Alert(title: Text("hi children!")
    /// ```
    ///
    /// - Warning: There is no additional warning. (self created)
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns alert with title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW
#Preview {
    Lec_Documentation()
}

