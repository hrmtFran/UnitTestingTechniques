//
//  ViewControllerTests.swift
//  UnitTestingTechniquesTests
//
//  Created by Francisco Olvera on 1/15/20.
//  Copyright © 2020 Francisco Olvera. All rights reserved.
//

import XCTest
import Alamofire
@testable import UnitTestingTechniques

class ViewControllerTests: XCTestCase {
    let vc = ViewController()
    override func setUp() {
        vc.apiClient = MockApiClient()
        vc.addButtonSection()
        vc.addResultLabel()
    }

    override func tearDown() { }

    func testButtonAdd() {
        removeSubviews()
        vc.addButtonSection()
        var hasButton = false
        for subview in vc.view.subviews {
            if subview is UIButton {
                hasButton = true
            }
        }
        XCTAssert(hasButton)
    }
    
    func testLabelAdd() {
        removeSubviews()
        vc.addResultLabel()
        XCTAssert(vc.label.superview != nil)
    }
    
    func testButtonTap() {
        vc.buttonTapped()
        guard let text = vc.label.text else {
            XCTFail()
            return
        }
        XCTAssert(!text.isEmpty)
    }
    
    func removeSubviews() {
        for subview in vc.view.subviews {
            subview.removeFromSuperview()
        }
    }
}
