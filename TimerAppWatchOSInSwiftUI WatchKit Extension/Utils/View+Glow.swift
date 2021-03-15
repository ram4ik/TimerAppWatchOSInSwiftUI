//
//  View+Glow.swift
//  TimerAppWatchOSInSwiftUI WatchKit Extension
//
//  Created by ramil on 15.03.2021.
//

import SwiftUI

extension View {
    func glow(color: Color = .red, radius: CGFloat = 10) -> some View {
        self
            .shadow(color: color, radius: radius / 3)
            .shadow(color: color, radius: radius / 3)
            .shadow(color: color, radius: radius / 3)
    }
}
