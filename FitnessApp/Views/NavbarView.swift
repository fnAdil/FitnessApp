//
//  NavbarView.swift
//  FitnessApp
//
//  Created by Adil Özdemir on 23.08.2022.
//

import SwiftUI

struct NavbarDraw: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width*0.0589, y: height*0.2147))

        path.addCurve(to: CGPoint(x: width*0.3717, y: 0), control1: CGPoint(x: width*0.0853, y: height*0.1852), control2: CGPoint(x: 0.2564*width, y: 0))

        path.addCurve(to: CGPoint(x: width*0.5, y: height*0.2395), control1: CGPoint(x: 0.4359*width, y: 0), control2: CGPoint(x: 0.4517*width, y: 0.2395*height))

        path.addCurve(to: CGPoint(x: width*0.6283, y: 0), control1: CGPoint(x: 0.5483*width, y: 0.2395*height), control2: CGPoint(x: 0.5641*width, y: 0))

        path.addCurve(to: CGPoint(x: width*0.9410, y: 0.2148*height), control1: CGPoint(x: 0.6410*width, y: 0), control2: CGPoint(x: 0.9135*width, y: 0.1852*height))

        path.addCurve(to: CGPoint(x: width, y: 0.4688*height), control1: CGPoint(x: 0.9684*width, y: 0.2446*height), control2: CGPoint(x: width, y: 0.3245*height))

        path.addLine(to: CGPoint(x: width, y: 0.7386*height))

        path.addCurve(to: CGPoint(x: width*0.9410, y: height), control1: CGPoint(x: width, y: 0.8829*height), control2: CGPoint(x: width*0.9735, y: height))

        path.addLine(to: CGPoint(x: width*0.0589, y: height))

        path.addCurve(to: CGPoint(x: 0, y: 0.7386*height), control1: CGPoint(x: 0.0264*width, y: height), control2: CGPoint(x: 0, y: 0.8829*height))
        path.addLine(to: CGPoint(x: 0, y: height*0.4688))

        path.addCurve(to: CGPoint(x: width*0.0589, y: height*0.2147), control1: CGPoint(x: 0, y: 0.3245*height), control2: CGPoint(x: 0.0325*width, y: 0.2445*height))
        path.closeSubpath()
        return path
    }
}

struct NavbarView: View {
    @StateObject var navbarViewModel: NavbarViewModel = .init()
    var body: some View {
        VStack(alignment: .center) {
            Spacer()

            ZStack(alignment: .center) {
                NavbarDraw()
                    .stroke()
                    .blendMode(.overlay)
                    .background(NavbarDraw()
                        .foregroundStyle(.ultraThinMaterial))
                    .frame(width: UIScreen.main.bounds.size.width, height: 88)

                HStack(alignment: .center, spacing: 35) {
                    Image(systemName: "")
                    VStack(spacing: 5) {
                        Image(systemName: "figure.walk").font(.title2)
                            .foregroundColor(navbarViewModel.index == 0 ? .white : .gray)

                        Text("Fitness").font(.caption)
                            .foregroundColor(navbarViewModel.index == 0 ? .white : .gray)

                    }.onTapGesture {
                        navbarViewModel.index = 0
                    }
                    VStack(spacing: 5) {
                        Image(systemName: "chart.bar.doc.horizontal").font(.title2)
                            .foregroundColor(navbarViewModel.index == 1 ? .white : .gray)

                        Text("Training").font(.caption).foregroundColor(navbarViewModel.index == 1 ? .white : .gray)

                    }.onTapGesture {
                        navbarViewModel.index = 1
                    }

                    Image(systemName: "")
                    VStack(spacing: 5) {
                        Image(systemName: "timer").font(.title2)
                            .foregroundColor(navbarViewModel.index == 2 ? .white : .gray)

                        Text("Timer").font(.caption).foregroundColor(navbarViewModel.index == 2 ? .white : .gray)

                    }.onTapGesture {
                        navbarViewModel.index = 2
                    }
                    VStack(spacing: 7) {
                        Image(systemName: "person.fill").font(.title2)
                            .foregroundColor(navbarViewModel.index == 3 ? .white : .gray)

                        Text("Profile").font(.caption).foregroundColor(navbarViewModel.index == 3 ? .white : .gray)

                    }.onTapGesture {
                        navbarViewModel.index = 3
                    }
                    Image(systemName: "")

                }.background(EmptyView())
                    .frame(width: UIScreen.main.bounds.size.width, height: 88)

                GoButton()

                ZStack(alignment: .center) {
                    SiriAnimation(scale: 0.15)

                    Text("Go")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.8), radius: 1, x: 1, y: 1)
//                        .overlay {
//                            LinearGradient(
//                                colors: [.blue, .blue.opacity(0.3)],
//                                startPoint: .leading,
//                                endPoint: .trailing
//                            )
//                            .mask(
//                                Text("Go")
//                                    .font(.title)
//                                    .fontWeight(.bold)
//                            )
//                        }

                }.frame(width: 60, height: 60, alignment: .center).offset(x: 0, y: -60)
            }
        }
        .ignoresSafeArea()
    }
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarView().preferredColorScheme(.dark)
    }
}

struct GoButton: View {
    var body: some View {
        ZStack {
            Ellipse().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6695634723, green: 0.3895440102, blue: 0.447671473, alpha: 1)).opacity(0.8), Color(#colorLiteral(red: 0.4383635521, green: 0.3483642042, blue: 0.4758631587, alpha: 1)).opacity(0)]), startPoint: .top, endPoint: .bottom))
                .frame(width: 26, height: 42, alignment: .center)
                .rotationEffect(.degrees(-22))
                .offset(x: -12, y: 7).blur(radius: 5)

            Circle().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1729661226, green: 0.3365114629, blue: 0.5600026846, alpha: 1)), Color(#colorLiteral(red: 0.1635808349, green: 0.2995387018, blue: 0.4878633022, alpha: 1)).opacity(0)]), startPoint: .trailing, endPoint: .bottomLeading))
                .frame(width: 35, height: 35, alignment: .center).blur(radius: 5)
                .offset(x: 5, y: -5)

            Ellipse().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6695634723, green: 0.3895440102, blue: 0.447671473, alpha: 1)).opacity(0.8), Color(#colorLiteral(red: 0.4383635521, green: 0.3483642042, blue: 0.4758631587, alpha: 1)).opacity(0)]), startPoint: .top, endPoint: .bottom))
                .frame(width: 26, height: 42, alignment: .center)
                .rotationEffect(.degrees(-22))
                .offset(x: 0, y: 10)

            Ellipse().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6695634723, green: 0.3895440102, blue: 0.447671473, alpha: 1)).opacity(0.8), Color(#colorLiteral(red: 0.4383635521, green: 0.3483642042, blue: 0.4758631587, alpha: 1)).opacity(0)]), startPoint: .top, endPoint: .bottom))
                .frame(width: 26, height: 42, alignment: .center)
                .rotationEffect(.degrees(-22))
                .offset(x: 5, y: 0).opacity(0.3)

            Ellipse().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)).opacity(0.5)]), startPoint: .top, endPoint: .bottom))
                .frame(width: 26, height: 42, alignment: .center)
                .rotationEffect(.degrees(-10))
                .offset(x: -5, y: -5).opacity(0.3)

            Ellipse().fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(0.5)]), startPoint: .top, endPoint: .bottom))
                .frame(width: 26, height: 42, alignment: .center)
                .rotationEffect(.degrees(90))
                .offset(x: 10, y: 0).opacity(0.3)
            Circle().foregroundColor(.white)
                .frame(width: 25, height: 25, alignment: .center)
                .blur(radius: 11)

            Circle().foregroundColor(.clear)
                .overlay(
                    Circle()
                        .stroke(Color("shadow15").opacity(0.3), lineWidth: 1)
                        .shadow(color: Color("shadow15").opacity(0.3), radius: 1, x: 1, y: 1)
                        .clipShape(Circle())
                        .shadow(color: Color("shadow15").opacity(0.3), radius: 1, x: 1, y: 1)
                        .clipShape(Circle())
                ).saturation(2)

            Circle().foregroundColor(.clear)
                .overlay(
                    Circle()
                        .stroke(.white.opacity(0.15), lineWidth: 1)
                        .shadow(color: .white, radius: 2, x: 1, y: 1)
                        .clipShape(Circle())
                        .shadow(color: .white, radius: 2, x: 1, y: 1)
                        .clipShape(Circle())
                ).blendMode(.overlay).background(Circle()
                    .foregroundStyle(.ultraThinMaterial).opacity(0.3).saturation(10))

            Text("Go").font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)

        }.frame(width: 60, height: 60, alignment: .center).offset(x: 0, y: -60)
    }
}
