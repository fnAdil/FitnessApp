//
//  SiriAnimation.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 26.08.2022.
//

import SwiftUI

struct SiriAnimation: View {
    @State var isRotating: Bool = false
    @State var scale: Double = 0.2
    
    var body: some View {
        ZStack {
            ZStack {
                Image("shadow")
                Image("icon-bg")
                Image("pink-top")
                    .rotationEffect(.degrees(isRotating ? 320 : -360))
                    .hueRotation(.degrees(isRotating ? -270 : 60))
                    
                Image("pink-left")
                    .rotationEffect(.degrees(isRotating ? -360 : 180))
                    .hueRotation(.degrees(isRotating ? -220 : 300))
                    
                Image("blue-middle")
                    .rotationEffect(.degrees(isRotating ? -360 : 420))
                    .hueRotation(.degrees(isRotating ? -150 : 0))
                    .rotation3DEffect(.degrees(75), axis: (x: isRotating ? 1 : 5, y: 0, z: 0))
                
                Image("blue-right")
                    .rotationEffect(.degrees(isRotating ? -360 : 420))
                    .hueRotation(.degrees(isRotating ? 720 : -50))
                    .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: isRotating ? -5 : 15))
                
                Image("intersect")
                    .rotationEffect(.degrees(isRotating ? 30 : -420))
                    .hueRotation(.degrees(isRotating ? 0 : 720))
                    .rotation3DEffect(.degrees(15), axis: (x: 1, y: 1, z: 1), perspective: isRotating ? 5 : -5)
                    
                Image("green-right")
                    .rotationEffect(.degrees(isRotating ? -300 : 360))
                    .hueRotation(.degrees(isRotating ? 300 : -15))
                    .rotation3DEffect(.degrees(15), axis: (x: 1, y: isRotating ? -1 : 1, z: 0), perspective: isRotating ? -1 : 1)
                
                Image("green-left")
                    .rotationEffect(.degrees(isRotating ? 360 : -360))
                    .hueRotation(.degrees(isRotating ? 180 : 50))
                    .rotation3DEffect(.degrees(75), axis: (x: 1, y: isRotating ? -5 : 15, z: 0))
                
                Image("bottom-pink")
                    .rotationEffect(.degrees(isRotating ? 400 : -360))
                    .hueRotation(.degrees(isRotating ? 0 : 230))
                    .opacity(0.25)
                    .blendMode(.multiply)
                    .rotation3DEffect(.degrees(75), axis: (x: 5, y: isRotating ? 1 : -45, z: 0))
            }
            .blendMode(isRotating ? .hardLight : .difference)
            
            Image("highlight")
                .rotationEffect(.degrees(isRotating ? 360 : 250))
                .hueRotation(.degrees(isRotating ? 0 : 230))
                .padding()
                .onAppear {
                    withAnimation(.easeInOut(duration: 12).repeatForever(autoreverses: true)) {
                        isRotating.toggle()
                    }
                }
//                .onTapGesture {
//                    withAnimation(.easeInOut(duration: 12).repeatForever(autoreverses: false)) {
//                        isRotating.toggle()
//                    }
//                }

        }.scaleEffect(scale)
    }
}

struct SiriAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SiriAnimation(isRotating: false)
            .preferredColorScheme(.dark)
    }
}
