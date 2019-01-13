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
import AlamofireObjectMapper


class HomeDataSourceController: DatasourceController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getUsers { (users) in
            self.datasource = HomeDataSource(users: users)
        }
    }
    
    func getUsers(completion: @escaping (_ users: [Result]) -> ()){
        
        Alamofire.request("https://randomuser.me/api/?results=10", method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseObject { (response: DataResponse<UserResult>) in
            completion(response.result.value!.results!)
        }
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
