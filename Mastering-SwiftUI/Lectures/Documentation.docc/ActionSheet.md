# ActionSheet

Action Sheet give us pop up from below


### Simple Action Sheet with two different button along with message

@TabNavigator{
    @Tab("Simple ActionSheet Code"){
        This code will show a simple ActionSheet below
        ``` swift
        struct Lec_ActionSheet: View {
            @State var showActionSheet: Bool = false
            var body: some View {
                Button("Click me") {
                    showActionSheet.toggle()
                }
                .confirmationDialog("Result on clicking `Click me`", isPresented: $showActionSheet) {
                    Button("Delete or Title of Warning", role: .destructive) {
                        // Handle the confirm action
                        print("Confirmed")
                    }
                    Button("Cancel", role: .cancel) {}
                } message: {
                    Text("Are you sure you want to proceed")
                }
            }
        }

        ```
    }
    @Tab("Simple ActionSheet Preview"){
        ![SimpleActionSheet](ActionSheet01)
    }
}

@TabNavigator{
    @Tab("ActionSheet Code for multiple Actions"){
        This code will show a simple ActionSheet for multiple actions
        ``` swift
        struct Lec_ActionSheet: View {
            @State var showActionSheet: Bool = false
            var body: some View {
                Button("Click me") {
                    showActionSheet.toggle()
                }
                .confirmationDialog("Result on clicking `Click me`", isPresented: $showActionSheet) {
                    confirmationDialogButtons()
                } message: {
                    confirmationDialogMessage()
                }
            }
            
            private func confirmationDialogButtons() -> some View {
                Group {
                    Button("Confirm", action: defaultAction)
                    Button("Delete or Title of Warning", role: .destructive, action: destructiveAction)
                    Button("Cancel", role: .cancel) { }
                }
            }
            
            // Function to define the message for the confirmation dialog
            private func confirmationDialogMessage() -> Text {
                Text("Are you sure you want to proceed")
            }
            
            // Default action
            private func defaultAction() {
                print("Confirm button is pressed so we proceed")
            }
            
            // Destructive action
            private func destructiveAction() {
                print("destructive action is used")
            }
        }
        ```
    }
    @Tab("MuliAction ActionSheet Preview"){
        ![MuliActionActionSheet](ActionSheet02)
    }
}
