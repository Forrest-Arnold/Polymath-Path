//
//  ProficienciesView.swift
//  Polymath-Path
//
//  Created by Forrest Kalani Arnold on 4/8/25.
//

import SwiftUI

struct ProficienciesView: View {
    @EnvironmentObject var skillViewModel: SkillViewModel
    var body: some View {
        ScrollView {
            VStack {
                ForEach(skillViewModel.proxySkills) { skill in
                    VStack(alignment: .leading) {
                        Button {
                            // Show subskills
                        } label: {
                            HStack {
                                Text(skill.name)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                Text(">")
                                    .font(.title3)
                                    .bold()
                            }
                            .foregroundStyle(.black)
                        }
                        HStack {
                            ForEach(0..<7) { proficiency in
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(skill.proficiency > proficiency ? .blue : .gray)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 6)
                                            .stroke(lineWidth: 4)
                                            .frame(width: 40, height: 40)
                                    }
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ProficienciesView()
        .environmentObject(SkillViewModel())
}
