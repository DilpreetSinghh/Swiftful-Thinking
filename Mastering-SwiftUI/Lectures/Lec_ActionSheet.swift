//
//  Lec_ActionSheet.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 31/01/24.
//

import SwiftUI

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

#Preview {
    Lec_ActionSheet()
}
