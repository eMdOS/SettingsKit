//
//  AppTest.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import XCTest
@testable import SettingsKit

class AppTest: XCTestCase {

    func test_app_route_isNotEmpty() {
        // given
        let routable: Routable = App.default

        // then
        XCTAssertTrue(routable.route.characters.count > 0)
    }

}
