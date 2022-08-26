//
//  StepsCard.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct StepsCard: View {
    var body: some View {
        let color = Color(#colorLiteral(red: 0.3566365838, green: 0.2899360061, blue: 0.7276663184, alpha: 1))
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(.white, lineWidth: 1).blendMode(.overlay)
                .background(RoundedRectangle(cornerRadius: 30)
                    .fill(Color(#colorLiteral(red: 0.1463547051, green: 0.1574619114, blue: 0.2792110443, alpha: 1))).blendMode(.overlay))

                .backgroundBlur(radius: 10, opaque: true)
                .frame(width: 165, height: 210).cornerRadius(30)

            VStack(alignment: .center) {
                HStack {
                    Text("Steps")
                    Spacer()
                    Image(systemName: "location.circle.fill").foregroundColor(color)
                }
                Spacer()
                ZStack {
                    Circle()
                        .strokeBorder(style: StrokeStyle(lineWidth: 8, dash: [8, 8])).foregroundColor(color)
                        .frame(width: 100, height: 100)

                    VStack {
                        Text("570").font(.title).fontWeight(.bold)
                        Text("steps").font(.caption).fontWeight(.semibold)
                    }
                }

                Spacer()
            }
            .padding()
        }
        .frame(width: 165, height: 210).cornerRadius(30)
    }
}

struct StepsCard_Previews: PreviewProvider {
    static var previews: some View {
        StepsCard()
    }
}
