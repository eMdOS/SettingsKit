//
//  DeviceTest.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import XCTest
@testable import SettingsKit

class DeviceTest: XCTestCase {

    func test_device_route_isNotEmpty() {
        // given
        let routable: Routable = Device.default

        // then
        XCTAssertTrue(routable.route.characters.count > 0)
    }

}
