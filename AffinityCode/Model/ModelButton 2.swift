//
//  DataView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 11/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct GradientData {
    static let gradientPurple = Gradient(colors: [.lightPurple, .purple])
    static let gradientSun = Gradient(colors: [ .yellow, .red])
    static let gradientGreen = Gradient(colors: [.lightGreen, .darkGreen ])
    static let gradientBlue = Gradient(colors: [.turquoise, .myBlue])
    static let myGray = Gradient (colors: [.gray, .gray])
    static let myBlack = Gradient(colors: [.lightBlack, .lightBlack])
    static let myYellow = Gradient(colors: [.lightYellow, .darkYellow])
}

extension Color {
    static var lightPurple = Color(red: 238 / 255, green: 97 / 255, blue: 230 / 255)
    static var darkPurple = Color(red: 239 / 255, green: 85 / 255, blue: 230 / 255)
    static var myOrange = Color(red: 255 / 255, green: 98 / 255, blue: 1 / 255)
    static var myRed = Color(red: 250 / 255, green: 1 / 255, blue: 5 / 255)
    static var lightGreen = Color(red: 136 / 255, green: 224 / 255, blue: 50 / 255)
    static var darkGreen = Color(red: 126 / 255, green: 225 / 255, blue: 30 / 255)
    static var turquoise = Color(red: 12 / 255, green: 227 / 255, blue: 189 / 255)
    static var myBlue = Color(red: 11 / 255, green: 209 / 255, blue: 174 / 255)
    
    static var lightBlack = Color(red: 33 / 255, green: 29 / 255, blue: 39 / 255)
    static var lightYellow = Color(red: 243 / 255, green: 197 / 255, blue: 14 / 255)
    static var darkYellow = Color(red: 228 / 255, green: 185 / 255, blue: 14 / 255)
}
