//
//  OnboardingView1.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 14/11/1444 AH.
//

import SwiftUI

struct OnboardingView1: View {
    var body: some View {
        VStack{
            Image("image1")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 400)
            
            Text("Welcome to Habitime!")
                .foregroundColor(Color("koh"))
                .bold()
                .font(.system(size: 21))
            Text("Build healthier habits with daily plans and mindful reminders that help you stay accountable.")
                .foregroundColor(Color("koh"))
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.horizontal,30)

            Spacer()
            NavigationLink {
                OnboardingView2()
            } label: {
                HStack{
                    Text("NEXT")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .cornerRadius(90)
                    
                }.frame(width: 350,height: 70)
                    .background(Color("bluu"))
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .padding(.bottom,5)
                    .shadow(radius: 5)

            }
            Spacer()
            
            
        }
    }
}

struct OnboardingView1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView1()
    }
}
