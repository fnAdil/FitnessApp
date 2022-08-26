//
//  CustomLines.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct CustomLines: View {
    var body: some View {
        ZStack(alignment: .center) {
            LineView()
            LineView().rotationEffect(.degrees(-2))
            LineView().rotationEffect(.degrees(-4))
            LineView().rotationEffect(.degrees(-6))
            LineView().rotationEffect(.degrees(-8))
            LineView().rotationEffect(.degrees(-10))
            LineView().rotationEffect(.degrees(-12))
            MyCustomShape2().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3193126917, green: 0.7933659554, blue: 1, alpha: 1)), .gray.opacity(0)]), startPoint: .top, endPoint: .bottom))
                .frame(width: UIScreen.main.bounds.size.width, height: 100)
                .rotationEffect(.degrees(-12))

            Circle().stroke(.white.opacity(0.4)).foregroundColor(.blue)
                .frame(width: 3, height: 3, alignment: .center).addGlowEffect(color1: .white, color2: .blue, color3: .white).offset(x: -17, y: -17)

        }.offset(y: -90)
    }
}

struct CustomLines_Previews: PreviewProvider {
    static var previews: some View {
        CustomLines()
    }
}
