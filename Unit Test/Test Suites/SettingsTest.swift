//
//  SettingsTest.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import XCTest
@testable import SettingsKit

class SettingsTest: XCTestCase {

    var application: ApplicationMock!

    override func setUp() {
        super.setUp()
        application = ApplicationMock()
    }

    // MARK: - Test Cases

    func test_application_canOpenURL_methodCalled_whenCalling_settings_openURLCompletionHandler() {
        // when
        Settings<RoutableMock>.route(.mock).open(from: application)

        // then
        XCTAssertTrue(application.canOpenURLCalled)
    }

    func test_application_openURLCompletionHandler_methodCalled_whenGivingAValidScheme() {
        // given
        application.canOpenURL = true

        // when
        Settings<RoutableMock>.route(.mock).open(from: application)

        // then
        XCTAssertTrue(application.openURLCompletionHandlerCalled)
    }

    func test_settings_openURLCompletionHandler_closure_returns_false_whenSchemeCannotBeOpened() {
        let expectation = self.expectation(description: "")

        // given
        application.canOpenURL = false
        var opened: Bool = false

        // when
        Settings<RoutableMock>.route(.mock).open(from: application) { succeeded in
            opened = succeeded
            expectation.fulfill()
        }

        // then
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail(error.localizedDescription)
            } else {
                XCTAssertFalse(opened)
            }
        }
    }

    func test_settings_openURLCompletionHandler_closure_returns_true_whenSchemeCanBeOpened() {
        let expectation = self.expectation(description: "")

        // given
        application.canOpenURL = true
        var opened: Bool = false

        // when
        Settings<RoutableMock>.route(.mock).open(from: application) { succeeded in
            opened = succeeded
            expectation.fulfill()
        }

        // then
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail(error.localizedDescription)
            } else {
                XCTAssertTrue(opened)
            }
        }
    }

}
