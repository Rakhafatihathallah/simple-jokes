//
//  JokesModel.swift
//  simple-jokes
//
//  Created by Rakha Fatih Athallah on 23/07/22.
//

import Foundation


struct JokesModel : Codable {
    
    let icon : String
    let value : String
    
    enum CodingKeys : String, CodingKey {
        case icon = "icon_url"
        case value
    }
}
