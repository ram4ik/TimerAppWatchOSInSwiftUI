//
//  TimerCell.swift
//  TimerAppWatchOSInSwiftUI WatchKit Extension
//
//  Created by ramil on 15.03.2021.
//

import SwiftUI

struct TimerCell: View {
    var leftTimer: TimerModel
    var rightTimer: TimerModel
    
    var body: some View {
        HStack {
            NavigationLink(
                destination: Text("TimerView"),
                label: {
                    dialView(title: leftTimer.timeTitle, subtitle: leftTimer.unitTitle)
                }).buttonStyle(PlainButtonStyle())
            
            NavigationLink(
                destination: Text("TimerView"),
                label: {
                    dialView(title: rightTimer.timeTitle, subtitle: rightTimer.unitTitle)
                }).buttonStyle(PlainButtonStyle())
        }.foregroundColor(Color.white.opacity(0.3))
        .frame(height: 100)
    }
    
    private func dialView(title: String, subtitle: String) -> some View {
        ZStack {
            TickView()
            VStack {
                Text(title)
                    .font(.system(size: 24))
                    .bold()
                    .foregroundColor(.orange)
                
                Text(subtitle)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.white.opacity(0.2))
        .clipShape(Circle())
    }
}

struct TimerCell_Previews: PreviewProvider {
    static var previews: some View {
        TimerCell(leftTimer: TimerModel.allTimerValues()[0], rightTimer: TimerModel.allTimerValues()[1])
    }
}
