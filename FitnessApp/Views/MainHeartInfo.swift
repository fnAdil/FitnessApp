//
//  MainHeartInfo.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct MainHeartInfo: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Heart Rate").font(.title).fontWeight(.semibold)
            Text("120").font(.system(size: 50)).fontWeight(.bold)
            HStack {
                Text("bpm").fontWeight(.semibold)
                Image(systemName: "heart")
            }
            Spacer()
        }.padding(.top, 120)
    }
}

struct MainHeartInfo_Previews: PreviewProvider {
    static var previews: some View {
        MainHeartInfo()
    }
}
