//
//  TabView.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 14/11/1444 AH.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedIndexTab = 0 
    var body: some View {
        return VStack {
            HStack{
                TabView(selection: $selectedIndexTab) {
                    
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                                .renderingMode(.template)
                            Text("Home")
                            
                        }.tag(0)
                    
                    ProgressView()
                        .tabItem {
                            Image(systemName: "text.insert")
                                .renderingMode(.template)
                            Text("Progress")
                        }.tag(1)
                    
                    
                    SettingView()
                        .tabItem {
                            Image(systemName: "gearshape")
                                .renderingMode(.template)
                            Text("Settings")
                        }.tag(2)
                    
                }
                .accentColor(Color("bluu"))
                .background(.white).opacity(40.7)
            }.ignoresSafeArea()
            
        }
    }
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainTabView()  }.environmentObject(HappitViewModel())
    }
}
