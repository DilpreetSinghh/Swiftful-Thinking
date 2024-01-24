//
//  LecScrollView.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 13/01/24.
//

import SwiftUI

struct LecScrollView: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(0..<20){ index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack{
                            ForEach(0..<8){ index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 100, height: 100, alignment: .center)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    LecScrollView()
}
