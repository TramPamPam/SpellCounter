//
//  AbilityScoreGrid.swift
//  SpellCounter
//
//  Created by Oleksandr on 06.08.2020.
//  Copyright © 2020 Oleksandr. All rights reserved.
//

import SwiftUI

let abilityScores = [["Strength", "Dexterity"],
                     ["Constitution", "Intelligence"],
                     ["Wisdom", "Charisma"]]
let abilityValues = [[15, 14], [13, 12], [10, 8]]

func abilityModifier(score: Int) -> String {
    let intValue: Int = (score - 10) / 2
    if intValue <= 0 {
        return "\(intValue)"
    }
    return "+\(intValue)"
}

struct AbilityScoreGrid: View {
    var body: some View {
        NavigationView {
            GridStack(rows: 3, columns: 2) { row, col in
                VStack {
                    ZStack {
                        Image("ability")
                            .resizable()
                            .scaledToFit()
                        Text(abilityModifier(score: abilityValues[row][col]))
                            .offset(y: -12)
                        VStack() {
                            Spacer()
                            Text("\(abilityValues[row][col])")
                                .offset(y: -8)
                        }
                    }
                    .frame(width: 100, height: 100, alignment: .center)

                    Text(abilityScores[row][col])
                        .padding(.bottom, 12)
                }
            }
            .navigationBarTitle("Ability scores")
        }
    }
}

struct AbilityScoreGrid_Previews: PreviewProvider {
    static var previews: some View {
        AbilityScoreGrid()
    }
}
