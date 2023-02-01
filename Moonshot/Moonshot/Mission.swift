//
//  Mission.swift
//  Moonshot
//
//  Created by xhm on 2023/2/1.
//

import Foundation

struct Misson: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
