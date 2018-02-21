import Vapor
import XCTest
@testable import VaporExtensions

final class FutureTests: XCTestCase {
    func testFutureTrue() throws {
        let t = Future(true)
        let f = Future(false)

        XCTAssertEqual(try t.true(or: CustomError()).blockingAwait(), true)
        XCTAssertThrowsError(try f.true(or: CustomError()).blockingAwait())
    }

    func testFutureFalse() throws {
        let t = Future(true)
        let f = Future(false)

        XCTAssertThrowsError(try t.false(or: CustomError()).blockingAwait())
        XCTAssertEqual(try f.false(or: CustomError()).blockingAwait(), true)
    }

    func testFutureEqual() throws {
        let f1 = Future(34)
        let f2 = Future("string")

        XCTAssertEqual(try f1.equal(to: 34).blockingAwait(), true)
        XCTAssertEqual(try f1.equal(to: 30).blockingAwait(), false)

        XCTAssertNoThrow(try f1.equal(to: 34, or: CustomError()).blockingAwait())
        XCTAssertThrowsError(try f1.equal(to: 30, or: CustomError()).blockingAwait())

        XCTAssertEqual(try f2.equal(to: "string").blockingAwait(), true)
        XCTAssertEqual(try f2.equal(to: "not-equal").blockingAwait(), false)

        XCTAssertNoThrow(try f2.equal(to: "string", or: CustomError()).blockingAwait())
        XCTAssertThrowsError(try f2.equal(to: "not-equal", or: CustomError()).blockingAwait())
    }

    func testFutureNotEqual() throws {
        let f1 = Future(34)
        let f2 = Future("string")

        XCTAssertEqual(try f1.notEqual(to: 34).blockingAwait(), false)
        XCTAssertEqual(try f1.notEqual(to: 30).blockingAwait(), true)

        XCTAssertThrowsError(try f1.notEqual(to: 34, or: CustomError()).blockingAwait())
        XCTAssertNoThrow(try f1.notEqual(to: 30, or: CustomError()).blockingAwait())

        XCTAssertEqual(try f2.notEqual(to: "string").blockingAwait(), false)
        XCTAssertEqual(try f2.notEqual(to: "not-equal").blockingAwait(), true)

        XCTAssertThrowsError(try f2.notEqual(to: "string", or: CustomError()).blockingAwait())
        XCTAssertNoThrow(try f2.notEqual(to: "not-equal", or: CustomError()).blockingAwait())
    }

    static let allTests = [
        ("testFutureTrue", testFutureTrue),
        ("testFutureFalse", testFutureFalse),
        ("testFutureEqual", testFutureEqual),
        ("testFutureNotEqual", testFutureNotEqual)
    ]
}

struct CustomError: Error {}
