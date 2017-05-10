//
//  RoutableMock.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import Foundation
@testable import SettingsKit

enum RoutableMock: Routable {
    case mock

    public var route: String {
        return "mock-route"
    }
}
