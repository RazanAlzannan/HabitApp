//
//  OnboardingView2.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 14/11/1444 AH.
//

import SwiftUI

struct OnboardingView2: View {
    var body: some View {
        VStack{
            Image("image2")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 400)
            Text("Vizualize your efforts and analyze results !")
                .foregroundColor(Color("koh"))
                .multilineTextAlignment(.center)
                .bold()
                .font(.system(size: 21))
            Text("Clear charts and stats to track your progress.")
                .foregroundColor(Color("koh"))
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.horizontal,30)

            Spacer()
            NavigationLink {
                MainTabView()
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
            
            
        }.navigationBarBackButtonHidden()
    }
}

struct OnboardingView2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView2()
    }
}
