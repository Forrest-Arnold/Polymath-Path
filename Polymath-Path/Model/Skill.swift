//
//  Skill.swift
//  Polymath-Path
//
//  Created by Forrest Kalani Arnold on 4/8/25.
//

import Foundation

struct Skill: Identifiable {
    var id = UUID()
    var name: String
    var proficiency: Int
    var description: String
    var notes: String
    var subSkills: [Skill]
}
