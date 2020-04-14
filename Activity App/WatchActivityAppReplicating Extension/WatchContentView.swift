//
//  ContentView.swift
//  WatchActivityAppReplicating Extension
//
//  Created by Ryan Rauch on 4/13/20.
//  Copyright © 2020 Exyte. All rights reserved.
//

import SwiftUI

struct WatchContentView: View {
    var body: some View {
        createWatchRings()
    }
    
    func createWatchRings() -> some View {
        ZStack {
            RingView(
                percentage: ActivityData.ringsPercentage.standPercentage,
                backgroundColor: Color.standRingBackground,
                startColor: Color.standRingStartColor,
                endColor: Color.standRingEndColor,
                thickness: Constants.mainRingThickness * 0.8
            )
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
            RingView(
                percentage: ActivityData.ringsPercentage.exercisePercentage,
                backgroundColor: Color.exerciseRingBackground,
                startColor: Color.exerciseRingStartColor,
                endColor: Color.exerciseRingEndColor,
                thickness: Constants.mainRingThickness * 0.8
            )
                .frame(width: 135, height: 135)
                .aspectRatio(contentMode: .fit)
            RingView(
                percentage: ActivityData.ringsPercentage.movePercentage,
                backgroundColor: Color.moveRingBackground,
                startColor: Color.moveRingStartColor,
                endColor: Color.moveRingEndColor,
                thickness: Constants.mainRingThickness * 0.8
            )
                .frame(width: 190, height: 190)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WatchContentView()
            .previewDevice(PreviewDevice(rawValue: "Apple Watch Series 5 - 44mm"))
    }
}
