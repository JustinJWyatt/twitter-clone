//
//  User.swift
//  twitter-clone
//
//  Created by Justin Wyatt on 12/5/18.
//  Copyright © 2018 Justin Wyatt. All rights reserved.
//

import Foundation
import ObjectMapper

public struct UserResult: Mappable {
    public init?(map: Map) {
    
    }
    
    public mutating func mapping(map: Map) {
        info <- map["info"]
        results <- map["results"]
        
    }
    
    
    var info : Info?
    var results : [Result]?
}


public struct Result: Mappable {
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        cell <- map["cell"]
        dob <- map["dob"]
        email <- map["email"]
        gender <- map["gender"]
        id <- map["id"]
        location <- map["location"]
        login <- map["login"]
        name <- map["name"]
        nat <- map["nat"]
        phone <- map["phone"]
        picture <- map["picture"]
        registered <- map["registered"]
        
        
    }
    
    var cell : String?
    var dob : Dob?
    var email : String?
    var gender : String?
    var id : Id?
    var location : Location?
    var login : Login?
    var name : Name?
    var nat : String?
    var phone : String?
    var picture : Picture?
    var registered : Registered?
    
}

public struct Registered : Mappable {
    
    var age : Int?
    var date : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        age <- map["age"]
        date <- map["date"]
        
    }
    
}

public struct Picture : Mappable {
    
    var large : String?
    var medium : String?
    var thumbnail : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        large <- map["large"]
        medium <- map["medium"]
        thumbnail <- map["thumbnail"]
        
    }
    
}

public struct Name : Mappable {
    
    var first : String?
    var last : String?
    var title : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        first <- map["first"]
        last <- map["last"]
        title <- map["title"]
        
    }
    
}

public struct Login : Mappable {
    
    var md5 : String?
    var password : String?
    var salt : String?
    var sha1 : String?
    var sha256 : String?
    var username : String?
    var uuid : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        md5 <- map["md5"]
        password <- map["password"]
        salt <- map["salt"]
        sha1 <- map["sha1"]
        sha256 <- map["sha256"]
        username <- map["username"]
        uuid <- map["uuid"]
        
    }
    
}

public struct Location : Mappable {
    
    var city : String?
    var coordinates : Coordinate?
    var postcode : Int?
    var state : String?
    var street : String?
    var timezone : Timezone?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        city <- map["city"]
        coordinates <- map["coordinates"]
        postcode <- map["postcode"]
        state <- map["state"]
        street <- map["street"]
        timezone <- map["timezone"]
        
        
    }
    
}

public struct Timezone : Mappable {
    
    var descriptionField : String?
    var offset : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        descriptionField <- map["descriptionField"]
        offset <- map["offset"]
        
    }
    
}

public struct Coordinate : Mappable {
    
    var latitude : String?
    var longitude : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        
    }
    
}

public struct Id : Mappable {
    
    var name : String?
    var value : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        name <- map["name"]
        value <- map["value"]
        
    }
}

public struct Dob : Mappable {
    
    var age : Int?
    var date : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        age <- map["age"]
        date <- map["date"]
        
    }
    
}

public struct Info : Mappable {

    var page : Int?
    var results : Int?
    var seed : String?
    var version : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        page <- map["page"]
        results <- map["results"]
        seed <- map["seed"]
        version <- map["version"]
        
    }
    
}
