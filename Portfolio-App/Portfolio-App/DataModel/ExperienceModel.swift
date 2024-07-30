//
//  ExperienceModel.swift
//  Portfolio-App
//
//  Created by Himanshu Kesharwani on 30/07/24.
//

import Foundation

struct ExperienceModel: Hashable, Identifiable {
    let id = UUID()
    var companyName: String
    var designation : String
    var duration : String
}

struct ExperienceMockData {
    static let expData = ExperienceModel(companyName: "Quokka Labs LLP", designation: "iOS Developer", duration: "March 2023 - Present")
    
    static let expArray = [ExperienceModel(companyName: "Quokka Labs LLP", designation: "Senior iOS Developer", duration: "March 2023 - Present"),
                               ExperienceModel(companyName: "Quokka Labs LLP", designation: "iOS Developer L2", duration: "Sept 2020 - March 2023"),
                               ExperienceModel(companyName: "Quokka Labs LLP", designation: "iOS Developer L1", duration: "July 2019 - Sept 2020"),
                               ExperienceModel(companyName: "Quokka Labs LLP", designation: "Intern", duration: "Jan 2019 - July 2019")]
}
