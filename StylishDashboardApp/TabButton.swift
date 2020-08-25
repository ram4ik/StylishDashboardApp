//
//  TabButton.swift
//  StylishDashboardApp
//
//  Created by ramil on 25.08.2020.
//

import SwiftUI

struct TabButton: View {
    @Binding var selected: String
    var title: String
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                selected = title
            }
        }, label: {
            ZStack {
                Capsule()
                    .fill(Color.clear)
                    .frame(height: 45)
                
                if selected == title {
                    Capsule()
                        .fill(Color.white)
                        .frame(height: 45)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                }
                
                Text(title)
                    .foregroundColor(selected == title ? .black : .white)
                    .fontWeight(.bold)
            }
        })
    }
}

