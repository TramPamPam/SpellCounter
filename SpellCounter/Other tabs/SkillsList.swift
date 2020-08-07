//
//  SkillsList.swift
//  SpellCounter
//
//  Created by Oleksandr on 06.08.2020.
//  Copyright © 2020 Oleksandr. All rights reserved.
//

import SwiftUI

struct SkillsList: View {

    @EnvironmentObject var char: Character

    var body: some View {
        NavigationView {
            List(skills, id: \.self) { string in
                HStack() {
                    Text(string).bold()
                    Text("??")
                    Spacer()
                    Toggle(isOn: self.$char.proficient[0]) {
                        Text("Proficient?").multilineTextAlignment(.trailing)
                    }.frame(width: 160, height: 60, alignment: .center)
                }
            }
            .navigationBarTitle("Skills")
        }

    }
}

struct SkillsList_Previews: PreviewProvider {
    static var previews: some View {
        SkillsList().environmentObject(Character())
    }
}
