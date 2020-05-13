//
//  DataView.swift
//  AffinityCode
//
//  Created by Yann Christophe Maertens on 11/05/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

let lessons = ["Variables", "Strings et entiers", "Strings multi-lignes", "Doubles et booléens", "Interpolation de strings"]

struct GradientData {
    static let gradientPurple = Gradient(colors: [.lightPurple, .purple])
    static let gradientSun = Gradient(colors: [ .yellow, .red])
    static let gradientGreen = Gradient(colors: [.lightGreen, .darkGreen ])
    static let gradientBlue = Gradient(colors: [.turquoise, .myBlue])
    static let myGray = Gradient (colors: [.gray, .gray])
}

extension Color {
    static var lightPurple = Color(red: 212 / 255, green: 152 / 255, blue: 246 / 255)
    static var darkPurple = Color(red: 131 / 255, green: 0 / 255, blue: 248 / 255)
    static var myOrange = Color(red: 255 / 255, green: 98 / 255, blue: 1 / 255)
    static var myRed = Color(red: 250 / 255, green: 1 / 255, blue: 5 / 255)
    static var lightGreen = Color(red: 190 / 255, green: 251 / 255, blue: 173 / 255)
    static var darkGreen = Color(red: 39 / 255, green: 133 / 255, blue: 13 / 255)
    static var turquoise = Color(red: 12 / 255, green: 227 / 255, blue: 189 / 255)
    static var myBlue = Color(red: 17 / 255, green: 88 / 255, blue: 233 / 255)
}
