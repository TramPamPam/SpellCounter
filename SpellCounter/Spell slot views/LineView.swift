//
//  LineView.swift
//  SpellCounter
//
//  Created by Oleksandr on 06.08.2020.
//  Copyright © 2020 Oleksandr. All rights reserved.
//

import SwiftUI

struct LineView: View {
    var texts: [String] = []

    var body: some View {
        HStack {
            ForEach(0 ..< self.texts.count) { column -> WideTextView in
                WideTextView(text: self.texts[column])
            }
        }
    }
}
struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
