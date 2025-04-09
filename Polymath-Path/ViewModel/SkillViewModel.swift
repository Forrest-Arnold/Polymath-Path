//
//  SkillViewModel.swift
//  Polymath-Path
//
//  Created by Forrest Kalani Arnold on 4/8/25.
//

import Foundation

class SkillViewModel: ObservableObject {
    
    @Published var proxySkills = [
        Skill(name: "Programming", proficiency: 4, description: "Any kind of coding", notes: "I've made good progress today", subSkills: [
            Skill(name: "SwiftUi", proficiency: 6, description: "Used for IOS development", notes: "Coding in it right now", subSkills: []),
            Skill(name: "GDScript", proficiency: 2, description: "The language Godot uses", notes: "I am quite new to it", subSkills: [])
        ]),
        Skill(name: "3D Modeling", proficiency: 5, description: "Making objects in 3D", notes: "I havent modeled in a while", subSkills: []),
        Skill(name: "2D Modeling", proficiency: 3, description: "Making art in 2D", notes: "I havent drawn in a while", subSkills: []),
        Skill(name: "People skills", proficiency: 3, description: "Any kind of human interactions", notes: "I could be more aware of my interactions with others", subSkills: [
            Skill(name: "Making friends", proficiency: 2, description: "How good I am at making new friends", notes: "", subSkills: []),
            Skill(name: "Small talk", proficiency: 4, description: "Surface level conversation", notes: "", subSkills: [])
        ]),
        Skill(name: "2nd Languages", proficiency: 2, description: "Languages I know other than my 1st", notes: "", subSkills: [
            Skill(name: "Japanese", proficiency: 2, description: "Japanese", notes: "Started a couple of days ago", subSkills: [])
        ])
    ]
    
    
    func createNewSkill(name: String, proficiency: Int, description: String, notes: String, subSkills: [Skill]) {
        proxySkills.append(Skill(name: name, proficiency: proficiency, description: description, notes: notes, subSkills: subSkills))
    }
}
