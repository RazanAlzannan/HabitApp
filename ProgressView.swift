//
//  ProgressView.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 14/11/1444 AH.
//

import SwiftUI

struct ProgressView: View {
    @EnvironmentObject var vm : HappitViewModel
    
    var body: some View {
        NavigationView{
            VStack{
                    Text("Number of all Habits : \(vm.count)")
                List {
                    Section (
                        header:
                            Text("My Habits 🔥")
                            .font(.title)
                            .foregroundColor(Color("bluu"))
                            .padding(.horizontal,50)
                        
                    ) {
                        if vm.myHabits.isEmpty {
                            Text("No Habits yet ☹️ !")
                                .foregroundColor(Color("pink"))
                                .font(.title2)
                            
                        }
                        ForEach(vm.myHabits, id: \.self) {
                            habit in
                            Text("\(habit.happit) \(habit.emojy) " )
                                .font(.title2)
                                .foregroundColor(Color("lahmi"))
                        }
                        .onDelete(perform:{indexSet in vm.deleteHappitt(IndexSet: indexSet)})
                        .onMove(perform: {
                            indices, newOffset in
                            vm.move(indexSet: indices, newOffset: newOffset)
                        })
                    }
                }
            }
            .navigationBarItems(leading: EditButton())
        }
    }
    
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProgressView()
        }.environmentObject(HappitViewModel())
    }
}
