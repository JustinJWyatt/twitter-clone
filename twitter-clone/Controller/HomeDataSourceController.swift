//
//  HomeDataSourceController.swift
//  twitter-clone
//
//  Created by Justin Wyatt on 12/3/18.
//  Copyright © 2018 Justin Wyatt. All rights reserved.
//

import Foundation
import LBTAComponents
import Alamofire

class HomeDataSourceController: DatasourceController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getUsers { (users) in
            self.datasource = HomeDataSource(users: users)
        }
        
    }
    
    func getUsers(completion: @escaping (_ users: [User]) -> ()){
        
        Alamofire.request("https://jsonplaceholder.typicode.com/users", method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON(completionHandler: { response in
            
            let decoder = JSONDecoder()
            
            do {
                let users = try decoder.decode([User].self, from: response.data!) as [User]
                
                completion(users)
                
            }catch{
                
            }
            
        })
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
}
