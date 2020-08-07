//
//  WideTextView.swift
//  SpellCounter
//
//  Created by Oleksandr on 06.08.2020.
//  Copyright © 2020 Oleksandr. All rights reserved.
//

import SwiftUI

struct WideTextView: View {
    var text: String = ""
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
            Spacer()
        }
    }
}


struct WideTextView_Previews: PreviewProvider {
    static var previews: some View {
        WideTextView()
    }
}
