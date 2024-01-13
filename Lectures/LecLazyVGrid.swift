//
//  LecLazyVGrid.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 13/01/24.
//

import SwiftUI

struct LecLazyVGrid: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    
    var body: some View {
        ScrollView{
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/,
                content: {
                    Section(header: Text("Section 1")
                        .foregroundStyle(Color.red)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.gray)
                        .padding()
                        
                            , content: {
                        ForEach(0..<50){ index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    })
            })
        }
    }
}

#Preview {
    LecLazyVGrid()
}
