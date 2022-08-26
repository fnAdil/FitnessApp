//
//  SleepCard.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct SleepCard: View {
    var body: some View {
        let color = Color(#colorLiteral(red: 0.7330918908, green: 0.583562851, blue: 0.09923288971, alpha: 1))
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(.white, lineWidth: 1).blendMode(.overlay)
                .background(RoundedRectangle(cornerRadius: 30)
                    .fill(Color(#colorLiteral(red: 0.1463547051, green: 0.1574619114, blue: 0.2792110443, alpha: 1))).blendMode(.overlay))

                .backgroundBlur(radius: 10, opaque: true)
                .frame(width: 165, height: 210).cornerRadius(30)

            VStack(alignment: .center) {
                HStack {
                    Text("Sleep")
                    Spacer()
                    Image(systemName: "moon.circle.fill").foregroundColor(color)
                }
                Spacer()

                VStack {
                    HStack(spacing: 0) {
                        Text("7h").font(.title).fontWeight(.bold)
                        Text("/day").font(.caption).fontWeight(.semibold).padding(.top, 9)
                    }
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10).stroke(color).background(RoundedRectangle(cornerRadius: 10).foregroundColor(color).frame(width: 130, height: 20).opacity(0.4)).frame(width: 130, height: 20).opacity(0.3)
                        RoundedRectangle(cornerRadius: 10).foregroundColor(color).frame(width: 100, height: 20)
                    }
                }

                Spacer()
            }
            .padding()
        }
        .frame(width: 165, height: 210).cornerRadius(30)
    }
}

struct SleepCard_Previews: PreviewProvider {
    static var previews: some View {
        SleepCard()
    }
}
