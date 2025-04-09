//
//  ProficienciesView.swift
//  Polymath-Path
//
//  Created by Forrest Kalani Arnold on 4/8/25.
//

import SwiftUI

struct ProficienciesView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1..<10) { skill in
                    VStack(alignment: .leading) {
                        Text("Skill \(skill)")
                            .font(.title2)
                            .fontWeight(.semibold)
                        HStack {
                            ForEach(0..<7) { proficiency in
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(.gray)
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
}
