//
//  ContentView.swift
//  SpellCounter
//
//  Created by Oleksandr on 02.02.2020.
//  Copyright © 2020 Oleksandr. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            AbilityScoreGrid()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                            .imageScale(.large)
                            .foregroundColor(.green)
                        Text("Ability Scores")
                }
            }

            SavingThrowsList()
                .environmentObject(Character())
                .tabItem {
                    VStack {
                        Image(systemName: "heart.circle")
                            .imageScale(.large)
                            .foregroundColor(.green)
                        Text("Saving throws")
                }
            }

            SkillsList()
                .environmentObject(Character())
                .tabItem {
                    VStack {
                        Image(systemName: "hand.draw")
                            .imageScale(.large)
                            .foregroundColor(.green)
                        Text("Skills")
                }
            }


            GridStack(rows: 3, columns: 3) { row, col in
                SpellSlot(level: row + col + 1, count: row + col)
            }.tabItem {
                Image(systemName: "wand.and.stars")
                Text("Slots")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }


}
