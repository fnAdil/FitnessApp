//
//  ContentView.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 18.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.0774134621, green: 0.08096220344, blue: 0.1571190953, alpha: 1)).ignoresSafeArea()
            MainView()
            NavbarView()
        }
        .frame(maxWidth: UIScreen.main.bounds.size.width)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}

struct MainView: View {
    var body: some View {
        ZStack {
            MainBackground()
            DashedCircles()
            CustomLines()
            MainHeartInfo()

            CardsView()

            AvatarView()
        }
    }
}
