//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/6/23.
//

import Foundation
// Associated values - type is declared after each case
// Raw value - Type is defined after the enum and then all of your cases conform to that one type. The abaove enuum is a raw value
enum ErrorMessage: String {
    case invalidUsername    = "This username created an invalidrequest. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server is invalid. Please try again."
}

