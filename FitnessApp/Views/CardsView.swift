//
//  CardsView.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        ScrollView {
            VStack {
//                HStack(alignment: .center) {
//                    CaloriesCard()
//
//                    WaterCard()
//
//
//                }
//
//                HStack(alignment: .center) {
//                    StepsCard()
//
//                    SleepCard()
//
//
//                }
//
//
//                HStack(alignment: .center) {
//                    CaloriesCard()
//
//                    WaterCard()
//
//
//                }

                ZStack(alignment: .center) {
                    CaloriesCard()
                        .offset(x: -95, y: -30)
                    WaterCard()
                        .offset(x: 95, y: 0)
                    StepsCard()
                        .offset(x: -95, y: 190)
                    SleepCard()
                        .offset(x: 95, y: 220)
                }.offset(y: 430)
            }.frame(width: UIScreen.main.bounds.width)
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
