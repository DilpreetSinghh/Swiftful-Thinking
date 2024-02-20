//
//  Lec_ContextMenu.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 21/02/24.
//

import SwiftUI

struct Lec_ContextMenu: View {
    
    @State var backgroundColor: Color = .white
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Dilpreet Singh")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(backgroundColor)
        .padding()
        .background(Color.gray.clipShape(RoundedRectangle(cornerRadius: 15)))
        .contextMenu(ContextMenu(menuItems: {
            Button {
                backgroundColor = .blue
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                Text("Report Post")
            }
            
            Button {
                backgroundColor = .heart
            } label: {
                HStack{
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }
        }))
    }
}

#Preview {
    Lec_ContextMenu()
}
