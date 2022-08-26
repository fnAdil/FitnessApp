//
//  CaloriesCard.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct CaloriesCard: View {
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
                    Text("Calories")
                    Spacer()
                    Image(systemName: "flame.fill").foregroundColor(Color(#colorLiteral(red: 1, green: 0.5800147653, blue: 0.4738702774, alpha: 1)))
                }
                Spacer()
                ZStack {
                    Circle().trim(from: 0.0, to: 1)
                        .stroke(
                            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.5800147653, blue: 0.4738702774, alpha: 1)), Color(#colorLiteral(red: 0.9997230172, green: 0.4732573032, blue: 0.5243626237, alpha: 1))]), center: .center, startAngle: .degrees(0), endAngle: .degrees(360)), style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round)
                        ).opacity(0.3)
                        .frame(width: 100, height: 100)
                    Circle().trim(from: 0.0, to: 0.7)
                        .stroke(
                            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.5800147653, blue: 0.4738702774, alpha: 1)), Color(#colorLiteral(red: 0.9997230172, green: 0.4732573032, blue: 0.5243626237, alpha: 1))]), center: .center, startAngle: .degrees(0), endAngle: .degrees(360)), style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round)
                        )
                        .rotationEffect(.degrees(270))
                        .frame(width: 100, height: 100)
                    
                    VStack {
                        Text("312").font(.title).fontWeight(.bold)
                        Text("kcal").font(.caption).fontWeight(.semibold)
                    }
                }
                
                Spacer()
            }
            .padding()
        }
        .frame(width: 165, height: 210).cornerRadius(30)
    }
}

struct CaloriesCard_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesCard()
    }
}
