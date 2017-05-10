//
//  Application.swift
//  SettingsKit
//
//  Created by eMdOS on 5/9/17.
//
//

import Foundation

public protocol Application {
    func open(url: URL, completionHandler completion: ((_ succeeded: Bool) -> Void)?)
    func canOpen(url: URL) -> Bool
}
