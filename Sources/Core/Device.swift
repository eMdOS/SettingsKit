//
//  Device.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import Foundation

public enum Device: String {
    case `default` = ""
}

extension Device: Routable {
    public var route: String {
        return "App-Prefs:" + rawValue
    }
}
