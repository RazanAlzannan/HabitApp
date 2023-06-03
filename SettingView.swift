//
//  SettingView.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 13/11/1444 AH.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack{
            Text("Settings")
                .bold().foregroundColor(Color("koh"))
                .padding()
            List{
                Section{
                    Field(text0 : "Genral", image0 :"gear" )
                    Field(text0 : "Reminder", image0 :"bell" )
                    
                
                
                
                Field(text0 : "Themeing", image0 :"person" )
                Field(text0 : "Happit Archive", image0 :"bubble.left.and.bubble.right" )
                    
                }
                Section{

                        Field(text0 : "Rate and leave a review", image0 :"bell" )
                        Field(text0 : "Share with a friend", image0 :"arrow.up.arrow.down" )
                        Field(text0 : "Installing the widget", image0 :"info.circle" )
                        Field(text0 : "Contact support", image0 :"suit.heart" )
                        
                    }
                    
                }
                
            }
        }
    }
    


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

struct Field : View{
        var text0 : String
        var image0: String
        var body: some View {
            HStack{
                Image(systemName: image0)
                    .foregroundColor(Color("green"))
                Text(text0).padding()
                    .foregroundColor(Color("koh"))
            }.frame(height: 40)
            
        }}
