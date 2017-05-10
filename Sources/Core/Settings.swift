//
//  Settings.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import UIKit

public enum Settings<Route> where Route: Routable {
    case route(Route)
}

extension Settings: ApplicationSettingsEnabler {
    public func open(from application: Application, completionHandler completion: ((Bool) -> Void)? = .none) {
        if case .route(let router) = self, let url = URL(string: router.route), application.canOpen(url: url) {
            application.open(url: url, completionHandler: completion)
        } else {
            completion?(false)
        }
    }
}
