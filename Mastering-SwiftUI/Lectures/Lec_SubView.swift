//
//  Lec_SubView.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 16/01/24.


import SwiftUI

///  Extracting Subview
struct Lec_SubView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    /// ## Overview
    /// we can use variable (`var`) in order to send some data
    var contentLayer: some View{
        HStack{
            MyItem(title: "Apples", count: 7, color: .red)
            MyItem(title: "Banana", count: 3, color: .yellow)
            MyItem(title: "Orange", count: 2, color: .orange)
        }
    }
}

#Preview {
    Lec_SubView()
}


struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View{
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
