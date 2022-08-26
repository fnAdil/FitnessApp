//
//  Extension.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

extension View {
    func backgroundBlur(radius: CGFloat = 3, opaque: Bool = false) -> some View {
        self
            .background(
                Blur(radius: radius, opaque: opaque)
            )
    }
}

extension View {
    func addGlowEffect(color1: Color, color2: Color, color3: Color) -> some View {
        self
            .foregroundColor(Color(hue: 0.5, saturation: 0.8, brightness: 1))
            .background {
                self
                    .foregroundColor(color1).blur(radius: 0).brightness(0.8)
            }
            .background {
                self
                    .foregroundColor(color2).blur(radius: 4).brightness(0.35)
            }
            .background {
                self
                    .foregroundColor(color3).blur(radius: 2).brightness(0.35)
            }
            .background {
                self
                    .foregroundColor(color3).blur(radius: 12).brightness(0.35)
            }
    }
}
