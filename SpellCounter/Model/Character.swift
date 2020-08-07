//
//  Character.swift
//  SpellCounter
//
//  Created by Oleksandr on 06.08.2020.
//  Copyright © 2020 Oleksandr. All rights reserved.
//

import SwiftUI

let skills: [String] = [
    "Acrobatics (Dex)",
    "Animal Handling (Wis)",
    "Arcana (Int)",
    "Athletics (Str)",
    "Deception (Cha)",
    "History (Int)",
    "Insight (Wis)",
    "Intimidation (Cha)",
    "Investigation (Int)",
    "Medicine (Wis)",
    "Nature (Int)",
    "Perception (Wis)",
    "Performance (Cha)",
    "Persuasion (Cha)",
    "Religion (Int)",
    "Sleight of Hand (Dex)",
    "Stealth (Dex)",
    "Survival (Wis)",
]

class Character: ObservableObject {

    var proficiencyBonus: Int = 2

    @Published var proficient: [Bool] = [false, false, false, false, false, false]

    @Published var values: [Int] = [2, 2, 1, 1, 0, -1]


}
