//
//  CrewModelView.swift
//  Crew-List1
//
//  Created by Arjun Prabhune on 8/27/23.
//

import SwiftUI


struct Member: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var gradientColors: [Color]
}
