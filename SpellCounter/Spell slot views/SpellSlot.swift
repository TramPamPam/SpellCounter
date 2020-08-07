//
//  SpellSlot.swift
//  SpellCounter
//
//  Created by Oleksandr on 06.08.2020.
//  Copyright © 2020 Oleksandr. All rights reserved.
//

import SwiftUI

struct SpellSlot: View {
    var level: Int = 0
    var count: Int = 0

    var body: some View {
        VStack {
            Image(systemName: "\(level).circle").frame(width: 44, height: 44)
            Text("\(count)").frame(width: 44, height: 44)
        }
    }

}

struct SpellSlot_Previews: PreviewProvider {
    static var previews: some View {
        SpellSlot()
    }
}
