//
//  AvatarIcon.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 18.08.2022.
//

import SwiftUI

struct AvatarIcon: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color("purple21").ignoresSafeArea()

            Circle().stroke(.white, lineWidth: 1)
                .blendMode(.overlay)

            Image("avatar")
                .resizable()
                .frame(width: 32, height: 32, alignment: .center)
                .cornerRadius(60)

        }.cornerRadius(50).frame(width: 44, height: 44, alignment: .center)
    }
}

struct AvatarIcon_Previews: PreviewProvider {
    static var previews: some View {
        AvatarIcon().preferredColorScheme(.dark)
    }
}
