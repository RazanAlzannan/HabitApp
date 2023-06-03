//
//  HappitAppApp.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 13/11/1444 AH.
//

import SwiftUI

@main
struct HappitApp: App {
    @StateObject public var vm = HappitViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                OnboardingView1()
            }.environmentObject(vm)
        }
    }
}
