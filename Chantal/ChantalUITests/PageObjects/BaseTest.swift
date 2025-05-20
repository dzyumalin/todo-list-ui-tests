//
//  BaseTest.swift
//  Chantal
//
//  Created by zjumalin on 21.04.2025.
//  Copyright © 2025 Monte Thakkar. All rights reserved.
//

import XCTest

class Logger {
	func log(_ mlog: String) {
		NSlog(mlog)
	}
}

public class BaseTest {
	typealias Completion = (() -> Void)?
	let app = XCUIApplication()
	let log = Logger().log
	required init(timeout: TimeInterval = 10, completion: Completion = nil) {
		XCTAssert(rootElement.waitForExistence(timeout: timeout),
				  "Page \(String(describing: self)) waited, but not loaded")
		completion
	}
}
