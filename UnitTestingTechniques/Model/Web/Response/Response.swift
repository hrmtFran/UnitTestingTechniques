//
//  Pokemon.swift
//  AsyncTests
//
//  Created by Francisco Olvera on 12/2/19.
//  Copyright © 2019 Francisco Olvera. All rights reserved.
//

import Foundation
struct ResponseObject: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
