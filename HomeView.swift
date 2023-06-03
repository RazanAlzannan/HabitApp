//
//  HomeView.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 13/11/1444 AH.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm : HappitViewModel
    var body: some View {
        
        VStack{
            HStack{
                Text("Today")
                    .foregroundColor(Color("koh"))
                    .bold()
                Spacer()
                NavigationLink {NewHappitView()} label: {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("bluu"))
                }
                
            }.padding(.horizontal, 40)
            Text("FEBRUARY 4").foregroundColor(.secondary).font(.system(size: 15)).padding(.trailing,220)
            
            Text("Number of all Habits : \(vm.count)")
                .bold().foregroundColor(Color("koh"))
                .padding()
            
        }
        
    }
    
}
        
    


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView()
        }.environmentObject(HappitViewModel())
    }
}



struct Button3: View {
    var image: String
    var text: String
    var color: Color
    var body: some View{
        NavigationLink {
        } label: {
            HStack{
                Image(systemName: image)
                    .resizable()
                    .frame(width: 40,height: 40)
                    .foregroundColor(.white)
                    .padding(.leading,30)
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
