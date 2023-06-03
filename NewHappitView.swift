//
//  NewHappitView.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 13/11/1444 AH.
//

import SwiftUI

struct NewHappitView: View {
    @EnvironmentObject var vm : HappitViewModel

    var body: some View {
       
            VStack{
                Text("New Habit")
                    .foregroundColor(Color("koh"))
                    .bold()
                Button2(image: "plus", text: "Create Custom habit", color: Color("bluu"))
                    .padding(.top, 40)
                ScrollView {
                    VStack{
                        Text("SUGGESTED HABITS").foregroundColor(Color("lahmi")).font(.system(size: 15)).padding(.trailing,190)
                        ForEach(vm.allHappits) { habit in
                            Button1(image: habit.emojy , text: habit.happit, color: Color("lahmi"))
                            
                        }
                    }
                }
            }
    }
    
}


struct NewHappitView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NewHappitView()
        }
        .environmentObject(HappitViewModel())
    }
}

struct Button1: View {
    var image: String
    var text: String
    var color: Color
    var body: some View{
        NavigationLink {

        } label: {
            HStack{
                Text(image)
                    .padding(.leading,40)
                    .font(.title)
                Text(text)
                    .font(.title3)
                    .padding(.trailing,90)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .cornerRadius(90)
                    .bold()
                
            }.frame(width: 350,height: 70)
                .background(color)
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.bottom,5)
                .shadow(radius: 5)

        }
    }
}

struct Button2: View {
    var image: String
    var text: String
    var color: Color
    var body: some View{
        NavigationLink {
            AddingView()
        } label: {
            HStack{
                Text(text)
                    .font(.title3)
                    .padding(.trailing,90)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .cornerRadius(90)
                Image(systemName: image)
                    .resizable()
                    .frame(width: 20,height: 20)
                    .foregroundColor(.white)
                    .padding()
                
            }.frame(width: 350,height: 70)
                .background(color)
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.bottom,5)
                .shadow(radius: 5)

        }
    }
}

