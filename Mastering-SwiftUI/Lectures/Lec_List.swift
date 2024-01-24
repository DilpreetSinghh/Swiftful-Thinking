//
//  Lec_List.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 23/01/24.
//

import SwiftUI

struct Lec_List: View {
    
    @State private var fruits: [String] = [
        "apple", "orange", "banana", "grapes"
    ]
    
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationStack{
            List {
                Section(header:
                    HStack{
                        Text("Fruits")
                        Image(systemName: "apple.logo")
                            .foregroundStyle(Color.red)
                    }
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)

                }
                Section {
                    ForEach(veggies, id: \.self){veggies in
                        Text(veggies.capitalized)
                    }
                } header: {
                    HStack {
                        Text("Veggies")
                        Image(systemName: "carrot.fill")
                            .foregroundStyle(Color.orange)
                    }
                }

            }
            .listStyle(DefaultListStyle())
            // have ability to change list style, make sure to use while making multiplatform application
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    addButton
                }
            }
        }
    }
    
    var addButton: some View{
        Button("Add") {
            add()
        }
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("coconut".capitalized)
    }
}


#Preview {
    Lec_List()
}
