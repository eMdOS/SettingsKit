//
//  ApplicationMock.swift
//  SettingsKit
//
//  Created by eMdOS on 5/10/17.
//
//

import Foundation

class ApplicationMock {
    var canOpenURL: Bool = false
    var canOpenURLCalled: Bool = false
    var openURLCompletionHandlerCalled: Bool = false
}

extension ApplicationMock: Application {
    func canOpen(url: URL) -> Bool {
        canOpenURLCalled = true
        return canOpenURL
    }

    func open(url: URL, completionHandler completion: ((Bool) -> Void)?) {
        openURLCompletionHandlerCalled = true
        completion?(canOpenURL)
    }
}
