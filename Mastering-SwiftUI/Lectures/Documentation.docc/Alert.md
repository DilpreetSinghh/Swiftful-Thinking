# Alert

Alert give us pop up in the center of the screen.


### Simple Alert

@TabNavigator{
    @Tab("Simple Alert Code"){
        This code will show a simple Alert (like error)
        ``` swift
        import SwiftUI

        struct Lec_Alerts: View {
            @State var showAlert: Bool = false
            var body: some View {
                Button("Click Here") {
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("There was an error"))
                })
            }
        }
        ```
    }
    @Tab("Simple Alert Preview"){
        ![SimpleAlert](Alert01)
    }
}

### Two Option Alert

@TabNavigator{
    @Tab("Two Button Alert Code"){
        This code will show a Alert (like error) with two buttons
        ``` swift
        struct Lec_Alerts: View {
            @State var showAlert: Bool = false
            @State var backgroundColor: Color = Color.yellow
            @State var alertTitle: String = ""
            @State var alertMessage: String = ""
            
            
            var body: some View {
                ZStack{
                    backgroundColor.ignoresSafeArea()
                    Button("Click Here") {
                        showAlert.toggle()
                    }
                    .alert(isPresented: $showAlert, content: {
                    getAlert()
                    })
                }
            }
            func getAlert() -> Alert {
                return Alert(title: Text("This is Title"),
                             message: Text("description"),
                             primaryButton: .destructive(Text("Delete"), action: {backgroundColor = .red}),
                             secondaryButton: .cancel())
                
                
        //             Alert(title: Text("There was an error"))
            }
        }
        ```
    }
    @Tab("Two Button Alert Preview"){
        ![Two Button Alert](Alert02)
    }
}

### Multiple Buttons for Alert
@TabNavigator{
    @Tab("Multiple Buttons for Alert Code"){
        This code will show multiple Button for Alert
        ``` swift
        struct Lec_Alerts: View {
            @State var showAlert: Bool = false
            @State var backgroundColor: Color = Color.yellow
            @State var alertTitle: String = ""
            @State var alertMessage: String = ""
            
            
            var body: some View {
                ZStack{
                    backgroundColor.ignoresSafeArea()
                    VStack{
                        Button("Button #1") {
                            alertTitle = "Error Uploading Video"
                            alertMessage = "The video could not be uploaded"
                            showAlert.toggle()
                        }
                        Button("Button #2") {
                            alertTitle = "Successfully Uploaded Video"
                            alertMessage = "The video is uploaded"
                            showAlert.toggle()
                        }
                    }
                    .alert(isPresented: $showAlert, content: {
                        getAlert()
                    })
                }
            }
            func getAlert() -> Alert {
                return Alert(title: Text(alertTitle),
                             message: Text(alertMessage),
                             dismissButton: .default(Text("OK")))
            }
        }
        ```
    }
    @Tab("Multiple Buttons for Alert Preview"){
        ![Multiple Buttons for Alert](Alert03)
    }
}

### Efficient Alert Button
@TabNavigator{
    @Tab("Efficient Alert Code"){
        This code is Efficient and multiple types of Alerts are supported
        ``` swift
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
        ```
    }
    @Tab("Efficient Alert Preview"){
        ![Efficient Alert](Alert04)
    }
}



