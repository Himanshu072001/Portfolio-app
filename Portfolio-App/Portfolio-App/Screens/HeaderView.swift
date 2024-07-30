//
//  HeaderView.swift
//  Portfolio-App
//
//  Created by Himanshu Kesharwani on 30/07/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Image(StringConstant.profileImage)
                .resizable()
                .frame(width: 100, height: 100)
                .background(.blue)
                .clipShape(Circle()) // Clip the image to a circle
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
            Text(StringConstant.name)
                .font(.system(size: 18, weight: .bold, design: .default))
                .padding(.top, 8)
            
            Text(StringConstant.position)
                .font(.system(size: 16, weight: .semibold, design: .default))
                .padding(.bottom, 2)
            
            HStack(alignment: .center) {
                Image(systemName: StringConstant.locationImage)
                    .imageScale(.medium)
                Text(StringConstant.location)
                    .font(.system(size: 14, weight: .regular, design: .default))
            }
        }
    }
}
