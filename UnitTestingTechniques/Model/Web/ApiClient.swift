//
//  APIManager.swift
//  AsyncTests
//
//  Created by Francisco Olvera on 12/2/19.
//  Copyright © 2019 Francisco Olvera. All rights reserved.
//

import Foundation
import Alamofire

class ApiClient: WebApiClientModel {
    let path = "https://jsonplaceholder.typicode.com/todos/1"
    func getNew(_ completion: @escaping (ResponseObject?, Error?) -> Void) {
        
        let req: DataRequest = AF.request(URL(string: path)!)
        req.responseDecodable(queue: .main) { (res: AFDataResponse<ResponseObject>) in
            guard let response = res.value else { return }
            completion(response, nil)
        }
    }
}
