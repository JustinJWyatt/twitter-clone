//
//  User.swift
//  twitter-clone
//
//  Created by Justin Wyatt on 12/5/18.
//  Copyright © 2018 Justin Wyatt. All rights reserved.
//

import Foundation

struct User: Decodable {
    
    let id: Int32
    let name: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
    let username: String
}

struct Address: Codable{
    
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
    
}

struct Company: Codable{
    let name: String
    let catchPhrase: String
    let bs: String
}

struct Geo: Codable{
    let lat: String
    let lng: String
}
