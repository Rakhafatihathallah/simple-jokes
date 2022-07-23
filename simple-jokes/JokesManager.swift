//
//  JokesManager.swift
//  simple-jokes
//
//  Created by Rakha Fatih Athallah on 23/07/22.
//

import Foundation

let jokesURL = "https://api.chucknorris.io/jokes/random"

class JokesManager : ObservableObject {
    
    @Published var jokesData : String = ""
    
    
    func getJokes() -> Void {
        
        guard let url = URL(string: jokesURL) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            do {
                if let data = data {
                    
                    let json = try JSONDecoder().decode(JokesModel.self, from: data)
                    
                    DispatchQueue.main.async {
                        self.jokesData = json.value
                    }
                    
                }
                
            } catch {
                print("error --> \(error.localizedDescription)")
            }
        }
        task.resume()
    }
    
}
