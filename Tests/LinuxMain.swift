//
//  LinuxMain.swift
//  VaporExtensions
//
//  Created by Gustavo Perdomo on 02/20/18.
//  Copyright © 2018 Vapor Community. All rights reserved.
//

import XCTest

import VaporExtensionsTests

var tests = [XCTestCaseEntry]()
tests += FutureExtensionsTests.allTests()
XCTMain(tests)
