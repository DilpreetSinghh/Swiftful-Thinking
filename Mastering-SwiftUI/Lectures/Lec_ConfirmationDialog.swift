//
//  Lec_ConfirmationDialog.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 31/01/24.
//

import SwiftUI

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

#Preview {
    Lec_ConfirmationDialog()
}
