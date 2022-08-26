//
//  AvatarView.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                AvatarIcon()
                Spacer()
                AvatarIcon2()
            }.padding(.horizontal)

            Spacer()
        }.frame(maxWidth: UIScreen.main.bounds.size.width)
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView()
    }
}
