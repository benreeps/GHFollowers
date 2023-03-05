//
//  Follower.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/5/23.
//

import Foundation

struct Followers: Codable {
    var login: String
    // login is not going to be null bc github will not allow this edge case 
    var avatarUrl: String
    // Codable will automatically correct camel case avatarUrl into snake case avatar_url
}
