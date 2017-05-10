//
//  App.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import Foundation

public enum App {
    case `default`
}

extension App: Routable {
    public var route: String {
        return UIApplicationOpenSettingsURLString
    }
}
