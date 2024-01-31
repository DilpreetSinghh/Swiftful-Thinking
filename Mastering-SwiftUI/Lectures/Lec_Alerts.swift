//
//  Lec_Alerts.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 30/01/24.
//

import SwiftUI

struct Lec_Alerts: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts{
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            VStack{
                Button("Button #1") {
                    alertType = .error
                    showAlert.toggle()
                }
                Button("Button #2") {
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("Error Uploading Video"),
                         message: Text("The video could not be uploaded"),
                         primaryButton: .default(Text("Retry"), action: {backgroundColor = .red}),
                         secondaryButton: .cancel())
        case .error:
            return Alert(title: Text("Successfully Uploaded Video"),
                         message: Text("The video is uploaded"),
                         dismissButton: .default(Text("OK")))
        case nil:
            return Alert(title: Text("Error"))
        }
    }
}

#Preview {
    Lec_Alerts()
}
