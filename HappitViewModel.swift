//
//  HappitViewModel.swift
//  HappitApp
//
//  Created by Razan Mohammed Alzannan on 13/11/1444 AH.
//

import Foundation
import SwiftUI


    
    @MainActor class HappitViewModel: ObservableObject{
        
        @Published var count : Int = 0
        @Published var myHabits = [Happit]()
        @Published var allHappits = [Happit(id: UUID(), happit: "Drink water", emojy: "💦"),
                                     Happit(id: UUID(), happit: "Proper nutrition", emojy: "⭐️"),
                                     Happit(id: UUID(), happit: "Run", emojy: "🏃🏻‍♀️"),
                                     Happit(id: UUID(), happit: "Read", emojy: "📗"),
                                     Happit(id: UUID(), happit: "Workout", emojy: "🏋🏻‍♀️"),
                                     Happit(id: UUID(), happit: "Learn", emojy: "📝"),
                                     Happit(id: UUID(), happit: "Daily steps", emojy: "💦"),
                                     Happit(id: UUID(), happit: "Exercise", emojy: "💦"),
                                     Happit(id: UUID(), happit: "Burn calories", emojy: "💦"),
                                     Happit(id: UUID(), happit: "Sleep more", emojy: "💦"),
                                     Happit(id: UUID(), happit: "Meditate", emojy: "💦")
        ]
        
        func incrementCounter() {
           count += 1
        }
        func decrementCounter() {
           count -= 1
        }
        
        func addHappit(happit : String, emojy : String)
        {
           let newHappit = Happit(id: UUID(), happit: happit, emojy: emojy)
            withAnimation(){
               myHabits.insert(newHappit, at: 0)
                incrementCounter()
            }
            
        }
        
        func deleteHappit(item: String) {
            if let index = myHabits.firstIndex(where: {$0.happit == item}){
                myHabits.remove(at: index)
                decrementCounter()
            }
        }
        
        func deleteHappitt(IndexSet: IndexSet) {
            myHabits.remove(atOffsets: IndexSet)
                decrementCounter()
        }
        
        func move(indexSet: IndexSet, newOffset: Int){
            myHabits.move(fromOffsets: indexSet, toOffset: newOffset)
        }
        
        
        func isDone () -> Bool {
            return true
        }
        
        func getHappitsCounter () -> Int {
           return count
        }
        
        

    }

