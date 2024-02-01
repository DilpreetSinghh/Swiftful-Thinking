# ConfirmationDialog

Confirmation Dialog gives us pop up from below



### Simple ConfirmationDialog with two different button along with message

@TabNavigator{
    @Tab("Simple ConfirmationDialog Code"){
        This code will show a simple ActionSheet below
        ``` swift
        struct Lec_ConfirmationDialog: View {
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
    @Tab("Simple ConfirmationDialog Preview"){
        ![SimpleConfirmationDialog](ConfirmationDialog01)
    }
}

### MultiAction Confirmation Dialog
@TabNavigator{
    @Tab("ConfirmationDialog Code for multiple Actions"){
        This code will show a simple ActionSheet for multiple actions
        ``` swift
        struct Lec_ConfirmationDialog: View {
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
    @Tab("MuliAction ConfirmationDialog Preview"){
        ![MuliActionConfirmationDialog](ConfirmationDialog02)
    }
}

### Efficient MuliAction Confirmation Dialog

@TabNavigator{
    @Tab("Efficient ConfirmationDialog Code"){
        This code will show a Efficient ConfirmationDialog below
        ``` swift
        struct Lec_ConfirmationDialog: View {
            @State private var showConfirmationDialog: Bool = false
            @State private var actionSheetOption: ActionSheetOptions = .isOtherPost
            
            enum ActionSheetOptions {
                case isMyPost
                case isOtherPost
            }
            
            var body: some View {
                VStack {
                    HStack {
                        Circle()
                            .frame(width: 30, height: 30)
                        Text("@username")
                        Spacer()
                        Button(action: {
                            actionSheetOption = .isOtherPost
                            showConfirmationDialog.toggle()
                        }, label: {
                            Image(systemName: "ellipsis")
                        })
                        .tint(.primary)
                    }
                    .padding(.horizontal)
                    
                    Rectangle()
                        .aspectRatio(1.0, contentMode: .fit)
                }
                .confirmationDialog("What would you like to do?", isPresented: $showConfirmationDialog) {
                    dialogButtons()
                }
            }
            
            @ViewBuilder
            private func dialogButtons() -> some View {
                switch actionSheetOption {
                case .isMyPost:
                    Button("Share", action: sharePost)
                    Button("Report", role: .destructive, action: reportPost)
                    Button("Delete", role: .destructive, action: deletePost)
                case .isOtherPost:
                    Button("Share", action: sharePost)
                    Button("Report", role: .destructive, action: reportPost)
                }
                Button("Cancel", role: .cancel) {}
            }
            
            /// Actions for each button
            private func sharePost() { print("share post") }
            private func reportPost() {  print("report post") }
            private func deletePost() {  print("delete post") }
        }
        ```
    }
    @Tab("Efficient ConfirmationDialog Code Preview"){
        ![EfficientConfirmationDialog](ConfirmationDialog03)
    }
}
