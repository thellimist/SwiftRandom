//
//  SwiftRandomTests.swift
//  SwiftRandomTests
//
//  Created by Rafael Ferreira on 10/3/16.
//
//

import XCTest

@testable import SwiftRandom

/// Tests above `SwiftRandom` module.
class SwiftRandomTests: XCTestCase {
    /// Tests if all static methods are working.
    func testStaticMethods() {
        XCTAssertNotNil(Randoms.randomInt(10, 20))
        XCTAssertNotNil(Randoms.randomCGFloat())
        XCTAssertNotNil(Randoms.randomPercentageisOver(70))
        XCTAssertNotNil(Randoms.randomBool())
        XCTAssertNotNil(Randoms.randomDateWithinDaysBeforeToday(5))
        XCTAssertNotNil(Randoms.randomDate())
        XCTAssertNotNil(Randoms.randomColor())
        XCTAssertNotNil(Randoms.randomFakeName())
        XCTAssertNotNil(Randoms.randomFakeGender())
        XCTAssertNotNil(Randoms.randomFakeConversation())
        XCTAssertNotNil(Randoms.randomFakeTitle())
        XCTAssertNotNil(Randoms.randomFakeTag())
        XCTAssertNotNil(Randoms.randomFakeNameAndEnglishHonorific())
        XCTAssertNotNil(Randoms.randomNSURL())
    }

    /// Tests for extensions applied directly above Swift types.
    func testTypeExtensions() {
        XCTAssertNotNil(Int.random())
        XCTAssertNotNil(Date.random())
        XCTAssertNotNil(Date.randomWithinDaysBeforeToday(7))
        XCTAssertNotNil(CGFloat.random())
        XCTAssertNotNil(Float.random())
        XCTAssertNotNil(Double.random())
        XCTAssertNotNil(UIColor.random())
        XCTAssertNotNil(URL.random())
    }

    /// Tests for SwiftRandom when applied above a list.
    func testListItemRandom() {
        let entry = ["hello", "world"]

        for _ in 0...10 {
            XCTAssertNotNil(entry[0..<entry.count].randomItem())
            XCTAssertNotNil(entry.randomItem())
        }
    }

    /// Tests using SwiftRandom above a `Range` of Int.
    func testRandomIntRange() {
        for _ in 0...10 {
            let randomUntilTen = Int.random(0...10)

            XCTAssertGreaterThanOrEqual(randomUntilTen, 0)
            XCTAssertLessThanOrEqual(randomUntilTen, 10)

            let randomLessTen = Int.random(0..<10)

            XCTAssertGreaterThanOrEqual(randomLessTen, 0)
            XCTAssertLessThan(randomLessTen, 10)
        }
    }

    /// Tests using async way to get a random gravatar.
    func testRandomGravatar() {
        let async = expectation(description: "Randoms.randomGravatar")

        Randoms.randomGravatar { (image, error) in
            XCTAssertNotNil(image)
            XCTAssertNil(error)

            async.fulfill()
        }

        waitForExpectations(timeout: 3.5, handler: nil)
    }

    /// Tests using async way to get an random gravatar with a specific size.
    func testRandomGravatarSize() {
        let async = expectation(description: "Randoms.randomGravatarSize")

        Randoms.randomGravatar(40) { (image, error) in
            XCTAssertNotNil(image)
            XCTAssertEqual(image?.size, CGSize(width: 40, height: 40))
            XCTAssertNil(error)

            async.fulfill()
        }

        waitForExpectations(timeout: 3.5, handler: nil)
    }

    /// Tests using async way to create a gravatar.
    func testRandomCreateGravatar() {
        let async = expectation(description: "Randoms.randomCreateGravatar")

        Randoms.createGravatar { (image, error) in
            XCTAssertNotNil(image)
            XCTAssertNil(error)

            async.fulfill()
        }

        waitForExpectations(timeout: 3.5, handler: nil)
    }

    /// Tests using async way to create a gravatar based at Style and Size.
    func testRandomCreateGravatarStyleSize() {
        let async = expectation(description: "Randoms.randomGravatarStyleSize")

        Randoms.createGravatar(.Retro, size: 40) { (image, error) in
            XCTAssertNotNil(image)
            XCTAssertEqual(image?.size, CGSize(width: 40, height: 40))
            XCTAssertNil(error)

            async.fulfill()
        }

        waitForExpectations(timeout: 3.5, handler: nil)
    }
}
