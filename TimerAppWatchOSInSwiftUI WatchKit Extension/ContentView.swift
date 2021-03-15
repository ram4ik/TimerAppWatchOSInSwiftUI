//
//  ContentView.swift
//  TimerAppWatchOSInSwiftUI WatchKit Extension
//
//  Created by ramil on 15.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TimerCell(leftTimer: TimerModel.allTimerValues()[0], rightTimer: TimerModel.allTimerValues()[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
