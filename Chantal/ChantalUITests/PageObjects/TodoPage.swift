//
//  TodoPage.swift
//  ChantalUITests
//
//  Created by zjumalin on 20.05.2025.
//  Copyright © 2025 Monte Thakkar. All rights reserved.
//

import XCTest

public class TodoPage: BaseTest {

	override var rootElement: XCUIElement {
		return app.navigationBars.buttons["Add"]
	}
	
	// Page Elements

	lazy var addButton = app.navigationBars.buttons["Add"]

	@discardableResult
	func tapOne(completion: Completion = nil) -> Self {
		log("tap the Add button")
		addButton.tap()
		return self
	}
}
