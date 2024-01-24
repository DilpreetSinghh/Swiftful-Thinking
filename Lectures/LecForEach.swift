//
//  LecForEach.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 13/01/24.
//

import SwiftUI

struct LecForEach: View {
    
    let data: [String] = ["One", "Two", "Three"]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    HStack {
                        Circle()
                            .frame(width: 25, height: 40)
                        Text(" Circle number is \(index + 1)   ")
                    }
                }
                
                ForEach(data.indices, id: \.self) { index in
                    Text("New Item: \(data[index]) has index of \(index + 1)")
                }
            }
        }
    }
}



#Preview {
    LecForEach()
}
