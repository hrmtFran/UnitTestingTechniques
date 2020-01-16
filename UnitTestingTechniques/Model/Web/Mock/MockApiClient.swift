//
//  MockApiClient.swift
//  UnitTestingTechniquesTests
//
//  Created by Francisco Olvera on 1/15/20.
//  Copyright © 2020 Francisco Olvera. All rights reserved.
//

import Foundation

class MockApiClient: WebApiClientModel {
    func getNew(_ completion: @escaping (ResponseObject?, Error?) -> Void) {
        let mockResponse = ResponseObject(userId: 1, id: 1, title: "mocked", completed: false)
        completion(mockResponse, nil)
    }
}
