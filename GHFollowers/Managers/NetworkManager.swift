//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Benjamin Reeps on 3/5/23.
//

import Foundation

class NetworkManager {
    static let shared    = NetworkManager()
    // static means that every network manager will have this var on it
    let baseURL          = "https://api.github.com/users/"
    // find base url on github rest api/ overview/ resources in the REST API/ schema
    
    private init() {}
    
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, ErrorMessage?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, .invalidUsername)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, .unableToComplete)
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, .invalidData)
//                completed(nil, "The data received from the server is invalid. Please try again.")
            }
        }
        
        task.resume()
    }
    // completed/ completion handeler/ closure are all interchangable terms
}
