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
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    
    var body: some View {
        ScrollView{
            
            Circle()
                .fill(Color.red)
                .frame(width: .greatestFiniteMagnitude)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: Text("Section 1")
                        .foregroundStyle(Color.black)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color.teal)
                        .padding()
                        
                            , content: {
                        ForEach(0..<50){ index in
                            Rectangle()
                                .fill(Color.orange)
                                .frame(height: 150)
                                
                        }
                    })
                    Section(header: Text("Section 2")
                        .foregroundStyle(Color.black)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color.teal)
                        .padding()
                        
                        
                            , content: {
                        ForEach(0..<50){ index in
                            Rectangle()
                                .fill(Color.brown)
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
