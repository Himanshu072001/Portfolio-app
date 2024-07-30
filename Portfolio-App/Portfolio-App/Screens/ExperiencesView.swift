//
//  ExperiencesView.swift
//  Portfolio-App
//
//  Created by Himanshu Kesharwani on 30/07/24.
//

import SwiftUI

struct ExperiencesView: View {
    var body: some View {
        VStack {
            HStack {
                Text(StringConstant.experiences)
                    .font(.system(size: 18, weight: .bold, design: .default))
                Image(systemName: StringConstant.arrowUp)
                    .imageScale(.medium)
                    .foregroundColor(.black)
                Spacer()
            }
            
            ForEach(ExperienceMockData.expArray, id: \.id) { item in
                ExperienceContantView(experience: item)
            }
        }
    }
}

struct ExperienceContantView: View {
    var experience: ExperienceModel
    
    var body: some View {
        HStack {
            VStack {
                Circle()
                    .frame(width: 10, height: 10)
                Rectangle()
                    .frame(width: 2, height: 100)
            }
            VStack(alignment: .leading) {
                Text(experience.designation)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(experience.companyName)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.bottom, 18)
                Text(experience.duration)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                
            }
            Spacer()
        }
    }
}
