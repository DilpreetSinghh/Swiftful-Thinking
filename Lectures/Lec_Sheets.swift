//
//  Lec_Sheets.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 23/01/24.
//

import SwiftUI

struct Lec_Sheets: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            } , label: {
                Text("Button")
                    .foregroundStyle(Color.accentColor)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 10)))
            })
            
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
            /// we can't use multiple sheets in a single view
            /// don't use conditional statements for sheets
            
//               For complete full Screen instead of sheet
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var Dismiss
    /// Binding value
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea(.all)
            
            Button(action: {
                Dismiss()
            } , label: {
                Image(systemName: "chevron.backward")
                    .foregroundStyle(Color.accentColor)
                    .font(.title)
                    .padding(20)
            })
            
            VStack(alignment: .center){
                Spacer()
                Text("This is the Second Screen")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Spacer()
            }
            
        }
    }
}


#Preview {
    Lec_Sheets()
}


