//
//  SkillsModel.swift
//  Portfolio-App
//
//  Created by Himanshu Kesharwani on 30/07/24.
//

import Foundation

struct SkillsModel: Hashable, Identifiable {
    var id =  UUID()
    var title: String
    var image: String
}

struct MockData {
    static var MockSkill = [SkillsModel(title: "iPhone OS", image: "iphone.gen3")]
    static var MockSkills = [SkillsModel(title: "iPhone OS", image: "iphone.gen3"),
                             SkillsModel(title: "Mac OS", image: "macbook"),
                             SkillsModel(title: "iPad OS", image: "ipad.gen2"),
                             SkillsModel(title: "WatchOS", image: "applewatch"),
                             SkillsModel(title: "Swift 5", image: "swift"),
                             SkillsModel(title: "UI/UX", image: "hand.tap.fill"),
                             SkillsModel(title: "Core Data", image: "swiftdata")]
    
}
