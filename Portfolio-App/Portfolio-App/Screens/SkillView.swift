//
//  SkillView.swift
//  Portfolio-App
//
//  Created by Himanshu Kesharwani on 30/07/24.
//

import SwiftUI

struct SkillView: View {
    var model: ProfileViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text(StringConstant.skills)
                    .font(.system(size: 18, weight: .bold, design: .default))
                Image(systemName: model.isShowSkillsView
                      ? StringConstant.arrowUp
                      : StringConstant.arrowDown)
                    .imageScale(.medium)
                    .foregroundColor(.black)
                Spacer()
            }
            .onTapGesture {
                model.isShowSkillsView.toggle()
                print("\(model.isShowSkillsView)")
            }
            
            LazyVGrid(columns: model.gridItem) {
                ForEach(MockData.MockSkills, id: \.id) { skill in
                    SkillContentView(skill: skill)
                }
            }
            
        }
    }
}

struct SkillContentView: View {
    var skill : SkillsModel
    
    var body: some View {
        VStack {
            Image(systemName: skill.image)
                .imageScale(.large)
            Text(skill.title)
                .font(.system(size: 13, weight: .semibold, design: .rounded))
                .font(.headline)
                .padding(.top, 4)
        }
        .padding()
        .frame(width: 100, height: 100)
        .background(
            RoundedRectangle(cornerRadius: 12.0)
                .opacity(0.1)
        )
    }
}
