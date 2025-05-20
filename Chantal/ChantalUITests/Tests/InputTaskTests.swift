//
//  InputTaskTests.swift
//  Chantal
//
//  Created by zjumalin on 21.04.2025.
//  Copyright © 2025 Monte Thakkar. All rights reserved.
//

import XCTest

class InputTaskTests: XCTestCase {

	override func setUp() {
		super.setUp()
		continueAfterFailure = false
		XCUIApplication().launch()
	}

	override func tearDown() {
		//
	}

	func testTapAllInputs() {
		TodoPage()
			.tapOne()
	}
}

