//
//  ContentView.swift
//  Portfolio-App
//
//  Created by Himanshu Kesharwani on 29/07/24.
//

import SwiftUI

struct PortfolioView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HeaderView()
                        .padding(.bottom, 32)
                    
                    SkillView(model: viewModel)
                        .padding(.bottom, 32)
                    
                    ExperiencesView()
                }
                .padding()
            }
            .navigationTitle(StringConstant.profile)
        }
    }
}

#Preview {
    PortfolioView()
}
