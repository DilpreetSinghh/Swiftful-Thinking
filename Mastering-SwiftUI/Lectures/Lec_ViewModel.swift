//
//  Lec_ViewModel.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 12/04/24.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

struct Lec_ViewModel: View {
    
    @State var fruitArray: [FruitModel] = [
        FruitModel(name: "Apple", count: 23)
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruitArray) { fruit in
                    HStack{
                        Text("\(fruit.count)")
                            .foregroundStyle(.blue)
                        Text(fruit.name)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform: deleteFruit)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Fruit List")
            .onAppear{
                getFruits()
            }
        }
    }
        //MARK: getFruit()
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 45)
        let fruit2 = FruitModel(name: "WaterMelon", count: 9)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
    }
    //MARK: deleteFruit
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

#Preview {
    Lec_ViewModel()
}
