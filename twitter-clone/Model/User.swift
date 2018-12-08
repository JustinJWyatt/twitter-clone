//
//  User.swift
//  twitter-clone
//
//  Created by Justin Wyatt on 12/5/18.
//  Copyright © 2018 Justin Wyatt. All rights reserved.
//

import Foundation


public struct User: Decodable {
    
    public let cell : String
    public let dob : Dob
    public let email : String
    public let gender : String
    public let id : Id
    public let location : Location
    public let login : Login
    public let name : Name
    public let nat : String
    public let phone : String
    public let picture : Picture
    public let registered : Registered
    
}

public struct Registered : Decodable{
    
    public let age : Int
    public let date : String
    
}

public struct Picture : Decodable{
    
    public let large : String
    public let medium : String
    public let thumbnail : String
    
}

public struct Name : Decodable {
    
    public let first : String
    public let last : String
    public let title : String
    
}

public struct Login : Decodable{
    
    public let md5 : String
    public let password : String
    public let salt : String
    public let sha1 : String
    public let sha256 : String
    public let username : String
    public let uuid : String
    
}

public struct Location : Decodable {
    
    public let city : String
    public let coordinates : Coordinate
    public let postcode : Int
    public let state : String
    public let street : String
    public let timezone : Timezone
    
}

public struct Timezone : Decodable{
    
    public let descriptionField : String
    public let offset : String
    
}

public struct Coordinate : Decodable{
    
    public let latitude : String
    public let longitude : String
    
}

public struct Id : Decodable {
    
    public let name : String
    public let value : String
    
}

public struct Dob : Decodable {
    
    public let age : Int
    public let date : String
    
}

public struct Info : Decodable {
    
    public let page : Int
    public let results : Int
    public let seed : String
    public let version : String
    
}
