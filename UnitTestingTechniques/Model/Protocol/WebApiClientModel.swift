//
//  APIClientProtocol.swift
//  AsyncTests
//
//  Created by Francisco Olvera on 12/22/19.
//  Copyright © 2019 Francisco Olvera. All rights reserved.
//

protocol WebApiClientModel {
    func getNew(_ completion: @escaping (ResponseObject?, Error?) -> Void)
}
