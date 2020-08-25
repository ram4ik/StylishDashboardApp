//
//  HomeView.swift
//  StylishDashboardApp
//
//  Created by ramil on 25.08.2020.
//

import SwiftUI

struct HomeView: View {
    @State var tab = "Europe"
    @Namespace var animation
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "contextualmenu.and.cursorarrow")
                        .foregroundColor(.white)
                        .imageScale(.large)
                        .padding()
                }).padding()
                Spacer(minLength: 0)
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bell.badge")
                        .foregroundColor(.white)
                        .imageScale(.large)
                        .padding()
                }).padding()
            }
            .padding()
            
            HStack {
                Text("Dashboard")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer(minLength: 0)
            }
            .padding()
            
            HStack(spacing: 0) {
                TabButton(selected: $tab, title: "Europe", animation: animation)
                
                TabButton(selected: $tab, title: "Global", animation: animation)
            }
            .background(Color.white.opacity(0.08))
            .clipShape(Capsule())
            .padding(.horizontal) 
            
            Spacer(minLength: 0)
        }
        .background(Color.orange)
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
