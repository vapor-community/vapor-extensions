//
//  XCTestManifests.swift
//  VaporExtensions
//
//  Created by Gustavo Perdomo on 02/20/18.
//  Copyright © 2018 Vapor Community. All rights reserved.
//

import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(FutureExtensionsTests.allTests)
    ]
}
#endif
