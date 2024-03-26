//
//  Lec_OnAppear.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 26/03/24.
//

import SwiftUI

struct Lec_OnAppear: View {
    
    @State var myText: String = "Start text0"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text(myText)
                    .padding()
                LazyVStack{
                    ForEach(0..<50) { _ in
                        ZStack {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(height: 250)
                                .padding()
                                .onAppear {
                                    count += 1
                            }
                        }
                    }
                }
            }
            .onAppear(perform: {
                /// Delayes the timing of action
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "New text"
                }
                
            })
            .onDisappear(perform: {
                myText = "End Text"
            })
            .navigationTitle("On Appear count: \(count)")
        }
    }
}

#Preview {
    Lec_OnAppear()
}
