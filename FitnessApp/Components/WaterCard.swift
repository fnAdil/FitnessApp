//
//  WaterCard.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct WaterCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(.white, lineWidth: 1).blendMode(.overlay)
                .background(RoundedRectangle(cornerRadius: 30)
                    .fill(Color(#colorLiteral(red: 0.1463547051, green: 0.1574619114, blue: 0.2792110443, alpha: 1))).blendMode(.overlay))

                .backgroundBlur(radius: 10, opaque: true)
                .frame(width: 165, height: 210).cornerRadius(30)

            VStack(alignment: .center) {
                HStack {
                    Text("Water")
                    Spacer()
                    Image(systemName: "humidity.fill").foregroundColor(Color(#colorLiteral(red: 0.3949169517, green: 0.6750054955, blue: 0.9382415414, alpha: 1)))
                }
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 30).stroke(Color(#colorLiteral(red: 0.4195603728, green: 0.6958546042, blue: 0.957184732, alpha: 1)))
                        .background(
                            ZStack(alignment: .top) {
                                RoundedRectangle(cornerRadius: 30)

                                    .fill(
                                        LinearGradient(colors: [Color(#colorLiteral(red: 0.03251739964, green: 0.2137796581, blue: 0.5376530886, alpha: 1)), Color(#colorLiteral(red: 0.4195603728, green: 0.6958546042, blue: 0.957184732, alpha: 1))], startPoint: .bottom, endPoint: .leading)
                                    )
                                    .frame(width: 50, height: 130)
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(
                                        .white.opacity(0.7)
                                    )
                                    .frame(width: 50, height: 60)
                            }
                        )
                        .frame(width: 50, height: 130).cornerRadius(30)

                    VStack {
                        Text("3400").font(.title).fontWeight(.bold).shadow(color: .black.opacity(0.8), radius: 1, x: 1, y: 1)
                        Text("ml").font(.caption).fontWeight(.semibold).shadow(color: .black.opacity(0.8), radius: 1, x: 1, y: 1)
                    }

//                        .trim(from: 0.0, to: 1)
//                        .stroke(
//                            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.5800147653, blue: 0.4738702774, alpha: 1)), Color(#colorLiteral(red: 0.9997230172, green: 0.4732573032, blue: 0.5243626237, alpha: 1))]), center: .center, startAngle: .degrees(0), endAngle: .degrees(360)), style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round)
//                        ).opacity(0.3)
//                        .frame(width: 100  , height: 100)
//                    Circle().trim(from: 0.0, to: 0.7)
//                        .stroke(
//                            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.5800147653, blue: 0.4738702774, alpha: 1)), Color(#colorLiteral(red: 0.9997230172, green: 0.4732573032, blue: 0.5243626237, alpha: 1))]), center: .center, startAngle: .degrees(0), endAngle: .degrees(360)), style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round)
//                        )
//                        .rotationEffect(.degrees(270))
//                        .frame(width: 100  , height: 100)
//
//                    VStack {
//                        Text("312").font(.title).fontWeight(.bold)
//                        Text("kcal").font(.caption).fontWeight(.semibold)
//                    }
                }

                Spacer()
            }
            .padding()
        }
        .frame(width: 165, height: 210).cornerRadius(30)
    }
}

struct WaterCard_Previews: PreviewProvider {
    static var previews: some View {
        WaterCard()
    }
}
