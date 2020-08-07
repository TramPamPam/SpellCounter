//
//  SavingThrowsList.swift
//  SpellCounter
//
//  Created by Oleksandr on 06.08.2020.
//  Copyright © 2020 Oleksandr. All rights reserved.
//

import SwiftUI

struct SavingThrowsList: View {
    @EnvironmentObject var char: Character

    let savingThrows = ["Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma"]

    func value(row: Int) -> String {
        let intValue = !char.proficient[row] ? char.values[row] : char.values[row] + char.proficiencyBonus
        if intValue <= 0 {
            return "\(intValue)"
        }
        return "+\(intValue)"
    }

    var body: some View {
        NavigationView {
            GridStack(rows: savingThrows.count, columns: 1) { row, col in
                HStack() {
                    Text(self.savingThrows[row]).bold()
                    Text(self.value(row: row))
                    Spacer()

                    Toggle(isOn: self.$char.proficient[row]) {
                        Text("Proficient?").multilineTextAlignment(.trailing)
                    }.frame(width: 160, height: 60, alignment: .center)
                }
            }
            .navigationBarTitle("Saving throws")
        }
    }
}

struct SavingThrowsList_Previews: PreviewProvider {
    static var previews: some View {
        SavingThrowsList()
            .environmentObject(Character())
    }
}
