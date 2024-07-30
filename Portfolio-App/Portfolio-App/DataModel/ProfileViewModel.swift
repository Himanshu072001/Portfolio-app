//
//  ProfileViewModel.swift
//  Portfolio-App
//
//  Created by Himanshu Kesharwani on 30/07/24.
//

import SwiftUI

final class ProfileViewModel: ObservableObject {
    let gridItem = [GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())]
    @Published var isShowSkillsView = true
}
