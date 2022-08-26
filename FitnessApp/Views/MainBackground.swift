//
//  MainBackground.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 19.08.2022.
//

import SwiftUI

struct MainBackground: View {
    var body: some View {
        VStack {
            ZStack {
                VStack(alignment: .leading) {
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("pink1"), Color("purple2")]), startPoint: .top, endPoint: .bottom)
                        ).opacity(0.6)
                        .frame(width: 216, height: 216)
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color("purple3"), Color("cyan1")]), startPoint: .top, endPoint: .bottom)
                        )
                        .frame(width: 216, height: 216)
                        .background(Blur(radius: 20, opaque: false))
                        .padding(.top, -80)
                        .padding(.leading, 165)
                   
                }.padding(.top, 60)
                Circle().opacity(0.06)
                    .backgroundBlur(radius: 70, opaque: true).cornerRadius(900)
                    .offset(x: 0, y: 5)
                    .frame(width: 500, height: 500)
                
                   
                
            }.frame(maxWidth: UIScreen.main.bounds.size.width)

            Spacer()
            
            Circle().fill(Color(#colorLiteral(red: 0.3038485348, green: 0.3142296672, blue: 0.8581334949, alpha: 1))).blur(radius: 70).opacity(0.8)
                .offset(x:  UIScreen.main.bounds.size.width*0.3, y: 65)
                .frame(width: 300, height: 300)
        
        }
        .padding(.top, -20)
    }
}

struct MainBackground_Previews: PreviewProvider {
    static var previews: some View {
        MainBackground()
    }
}
