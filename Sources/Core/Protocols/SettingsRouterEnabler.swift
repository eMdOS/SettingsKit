//
//  SettingsRouterEnabler.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import UIKit

public protocol ApplicationSettingsEnabler {
    func open(from application: Application, completionHandler completion: ((Bool) -> Void)?)
}
