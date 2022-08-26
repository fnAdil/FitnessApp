//
//  AvatarIcon.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 18.08.2022.
//

import SwiftUI

struct AvatarIcon2: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color("purple21").ignoresSafeArea()

            Circle().stroke(.white, lineWidth: 1)
                .blendMode(.overlay)

            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 25, height: 25, alignment: .center)
                .cornerRadius(60)
                .foregroundStyle(.black, .gray)

        }.cornerRadius(50).frame(width: 44, height: 44, alignment: .center)
    }
}

struct AvatarIcon2_Previews: PreviewProvider {
    static var previews: some View {
        AvatarIcon2().preferredColorScheme(.dark)
    }
}
