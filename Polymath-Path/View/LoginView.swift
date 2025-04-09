//
//  LoginView.swift
//  Polymath-Path
//
//  Created by Forrest Kalani Arnold on 4/8/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Polymath Path")
                .font(.title)
                .fontWeight(.semibold)
            VStack(alignment: .leading) {
                Text("polymath - noun")
                    .italic()
                    .padding(.bottom, 6)
                Text("a person of wide-ranging knowledge or learning.")
                    .italic()
            }
            .padding(20)
            VStack(alignment: .leading) {
                Text("Login")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.vertical, 20)
                Text("Username")
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 50)
                    .foregroundStyle(.gray)
                Text("Password")
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 50)
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            .padding(.bottom, 200)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
