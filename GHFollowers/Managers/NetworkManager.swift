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
    
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request. Please try again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, "Unable to complete your request. Please check your intrenet connection")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response from the server. Please try again.")
                return
            }
            
            guard let data = data else {
                completed(nil, "The data received from the server is invalid. Please try again.")
                return
            }
            
            do {
               let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "The data received from the server is invalid. Please try again.")
            }
        }
        
        task.resume()
    }
    // completed/ completion handleer/ closure are all interchangable terms
}
