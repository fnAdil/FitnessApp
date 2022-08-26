//
//  LineView.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 23.08.2022.
//

import SwiftUI

struct LineView: View {
    var body: some View {
        MyCustomShape().stroke(
            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.753637135, green: 0.7921024561, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.3360437155, green: 0.7616129518, blue: 0.9978778958, alpha: 1)), Color(#colorLiteral(red: 0.753637135, green: 0.7921024561, blue: 1, alpha: 1))]), center: .center, startAngle: .degrees(100), endAngle: .degrees(460)), style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round)
        ).blendMode(.overlay)
            .frame(width: UIScreen.main.bounds.size.width, height: 100)
    }
}

struct MyCustomShape2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: height*0.922))
        path.addCurve(to: CGPoint(x: width*0.5333, y: 0.1275*height), control1: CGPoint(x: 0.2266*width, y: 1.3*height), control2: CGPoint(x: 0.4346*width, y: 0.3*height))

        path.addCurve(to: CGPoint(x: width, y: 0.5242*height), control1: CGPoint(x: 0.8*width, y: -0.3*height), control2: CGPoint(x: 0.8213*width, y: 0.5277*height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: width*0.1, y: height))
        path.closeSubpath()
        return path
    }
}

struct MyCustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: height*0.922))
        path.addCurve(to: CGPoint(x: width*0.5333, y: 0.1275*height), control1: CGPoint(x: 0.2266*width, y: 1.3*height), control2: CGPoint(x: 0.4346*width, y: 0.3*height))

        path.addCurve(to: CGPoint(x: width, y: 0.5242*height), control1: CGPoint(x: 0.8*width, y: -0.3*height), control2: CGPoint(x: 0.8213*width, y: 0.5277*height))

        return path
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
