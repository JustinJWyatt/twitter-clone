//
//  HomeDataSource.swift
//  twitter-clone
//
//  Created by Justin Wyatt on 12/3/18.
//  Copyright © 2018 Justin Wyatt. All rights reserved.
//

import Foundation
import LBTAComponents
import Alamofire

class HomeDataSource: Datasource {
    
    init(users: [User]){
        self.users = users
    }
    
    var users = [User]()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
