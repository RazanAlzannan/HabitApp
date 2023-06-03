//
//  AddingView.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 13/11/1444 AH.
//

import SwiftUI

struct AddingView: View {
    @State var newHabit = ""
    @State var newEmojy = ""
    @Environment (\.presentationMode) var
    presentationMode
    @EnvironmentObject var vm : HappitViewModel
    var body: some View {
       
            VStack {
                
                Text("Add My New Habit !")
                    .font(.title)
                          .foregroundColor(Color("bluu"))
                Divider().padding(.horizontal,50)
                TextField(
                    "Add a new habit",
                    text: $newHabit
                ).font(.title3)
                    .padding()
                TextField(
                    "Add Emojy !",
                    text: $newEmojy
                ).font(.title3)
                    .padding()
                Divider().padding(.horizontal,50)
                Button("Save"){
                    vm.addHappit(happit: newHabit, emojy: newEmojy)
                    presentationMode.wrappedValue.dismiss()
                }.foregroundColor(Color("pink"))
                    .font(.title2).padding()
            }
        
    }
}

struct AddingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddingView()
        }.environmentObject(HappitViewModel())
    }
}
