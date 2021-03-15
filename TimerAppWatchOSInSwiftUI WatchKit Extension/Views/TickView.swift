//
//  TickView.swift
//  TimerAppWatchOSInSwiftUI WatchKit Extension
//
//  Created by ramil on 15.03.2021.
//

import SwiftUI

struct TickView: View {
    
    func tick(at tick: Int) -> some View {
        VStack {
            Rectangle()
                .fill(Color.primary)
                .opacity(tick % 5 == 0 ? 1 : 0.4)
                .frame(width: 0.5, height: tick % 5 == 0 ? 7 : 5)
            Spacer()
        }.rotationEffect(Angle.degrees((Double(tick) / 60) * 360))
    }
    
    var body: some View {
        ZStack {
            ForEach(0..<60) { tick in
                self.tick(at: tick)
            }
            
            GeometryReader { geo in
                ZStack {
                    EmptyView()
                }.frame(width: geo.size.width - 40, height: geo.size.height - 30, alignment: .center)
            }
        }
    }
}

struct TickView_Previews: PreviewProvider {
    static var previews: some View {
        TickView()
    }
}
