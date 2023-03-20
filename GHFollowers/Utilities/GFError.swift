//
//  GFError.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/20/23.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername    = "This username created an invalidrequest. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server is invalid. Please try again."
}
