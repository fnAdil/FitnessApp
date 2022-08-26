//
//  DashedCircles.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI


struct DashedCircles: View {
    var body: some View {
        ZStack(alignment: .center) {
            Circle().stroke(.black, lineWidth: 8).opacity(0.2)
                .frame(width: 460, height: 460)
            
            Circle().trim(from: 0.0, to: 0.5)
                .stroke(
                    AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.281858027, green: 0.8138263822, blue: 0.8869094849, alpha: 1)), Color(#colorLiteral(red: 0.3952652216, green: 0.6682566404, blue: 0.9350733161, alpha: 1)).opacity(0)]), center: .center, startAngle: .degrees(30), endAngle: .degrees(160)), style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round)
                ).rotationEffect(.degrees(290))
                .frame(width: 460, height: 460)
            
            Circle()
                .strokeBorder(style: StrokeStyle(lineWidth: 4, lineCap: CGLineCap(rawValue: 1)!, dash: [2, 8]))
                .frame(width: 390, height: 390, alignment: .center).blendMode(.overlay)
            
            Circle()
                .strokeBorder(style: StrokeStyle(lineWidth: 3, lineCap: CGLineCap(rawValue: 1)!, dash: [2, 8]))
                .frame(width: 375, height: 375, alignment: .center).blendMode(.overlay)
            
            Circle()
                .strokeBorder(style: StrokeStyle(lineWidth: 2, lineCap: CGLineCap(rawValue: 1)!, dash: [2, 8]))
                .frame(width: 362, height: 362, alignment: .center).blendMode(.overlay)
            Circle()
                .strokeBorder(style: StrokeStyle(lineWidth: 1, lineCap: CGLineCap(rawValue: 1)!, dash: [2, 8]))
                .frame(width: 350, height: 350, alignment: .center).blendMode(.overlay)
            
        }.offset(y: -145)
    }
}


struct DashedCircles_Previews: PreviewProvider {
    static var previews: some View {
        DashedCircles()
    }
}
