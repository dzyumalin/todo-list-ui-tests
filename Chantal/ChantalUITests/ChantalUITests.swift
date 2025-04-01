//
//  ChantalUITests.swift
//  ChantalUITests
//
//  Created by zjumalin on 20.01.2025.
//  Copyright © 2025 Monte Thakkar. All rights reserved.
//

import XCTest

final class ChantalUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

//		app.navigationBars.buttons["Add"].tap()
//		app.alerts.textFields["Enter task name..."].typeText("Talbaep")
//
//		app.alerts.buttons["Add"].tap()
//
//		XCTAssert(app.cells.staticTexts["Talbaep"].exists)

		// variables

			// buttons
			let doneButton = app.buttons["done"]
			let navButtonAdd = app.navigationBars.buttons["Add"]
			let alertsButtonAdd = app.alerts.buttons["Add"]
			let deleteButton = app.buttons["delete"]

			// textFields
			let staticTexts = app.staticTexts
			let alertTextField = app.alerts.textFields["Enter task name..."]

		// Input Task
		navButtonAdd.tap()
		app.alerts.textFields["Enter task name..."].typeText("Task 1")
		alertsButtonAdd.tap()

		// Input Task and drag to Done
		navButtonAdd.tap()
		alertTextField.typeText("Task 2")
		alertsButtonAdd.tap()

		staticTexts["Task 2"].swipeRight()
		doneButton.tap()

		// Input Task and drag to Done
		navButtonAdd.tap()
		alertTextField.typeText("Task 3")
		alertsButtonAdd.tap()
		staticTexts["Task 2"].swipeLeft()
		deleteButton.tap()


        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
