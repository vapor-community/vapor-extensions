//
//  FutureExtensions.swift
//  VaporExtensions
//
//  Created by Gustavo Perdomo on 02/20/18.
//  Copyright © 2018 Vapor Community. All rights reserved.
//

import Vapor

// MARK: - Methods

public extension Future where T == Bool {
    public func `true`(or error: Error) throws -> Future<Bool> {
        return self.map(to: Bool.self) { boolean in
            if !boolean {
                throw error
            }
            return boolean
        }
    }

    public func `false`(or error: Error) throws -> Future<Bool> {
        return self.map(to: Bool.self) { boolean in
            if boolean {
                throw error
            }
            return !boolean
        }
    }
}

public extension Future where T: Equatable {
    /// VaporExtensions: Check if the current value is equal to the passed value.
    ///
    ///    Future(5).equal(to: 5) -> Future(true)
    ///
    ///    Future("some string").equal(to: "other string") -> Future(false)
    ///
    /// - Parameter value: The value to compare.
    /// - Returns: The result of the comparison wrapped in a Future.
    public func equal(to value: T) -> Future<Bool> {
        return self.map(to: Bool.self) { current in
            return current == value
        }
    }

    /// VaporExtensions: Check if the current value is equal to the passed value.
    ///
    ///    Future(5).equal(to: 5, or: CustomError()) -> Future(true)
    ///
    ///    Future(5).equal(to: 3, or: CustomError()) -> Throws CustomError
    ///
    /// - Parameters:
    ///   - value: The value to compare.
    ///   - error: The error to be thrown.
    /// - Returns: The result of the comparison wrapped in a Future.
    /// - Throws: Throws the passed error if values are not equals.
    public func equal(to value: T, or error: Error) throws -> Future<Bool> {
        return try self.map(to: Bool.self) { current in
            return current == value
            }.true(or: error)
    }

    /// VaporExtensions: Check if the current value is different to the passed value.
    ///
    ///    Future(5).notEqual(to: 5) -> Future(false)
    ///
    ///    Future("some string").notEqual(to: "other string") -> Future(true)
    ///
    /// - Parameter value: The value to compare.
    /// - Returns: The result of the comparison wrapped in a Future.
    public func notEqual(to value: T) -> Future<Bool> {
        return self.map(to: Bool.self) { current in
            return current != value
        }
    }

    /// VaporExtensions: Check if the current value is different to the passed value.
    ///
    ///    Future(5).notEqual(to: 5, or: CustomError()) -> Throws CustomError
    ///
    ///    Future(5).notEqual(to: 3, or: CustomError()) -> Future(true)
    ///
    /// - Parameters:
    ///   - value: The value to compare.
    ///   - error: The error to be thrown.
    /// - Returns: The result of the comparison wrapped in a Future.
    /// - Throws: Throws the passed error if values are not equals.
    public func notEqual(to value: T, or error: Error) throws -> Future<Bool> {
        return try self.map(to: Bool.self) { current in
            return current != value
            }.true(or: error)
    }
}

public extension Future where T: Comparable {
    /// VaporExtensions: Check if the current value is greater than the passed value.
    ///
    ///    Future(5).greater(than: 4) -> Future(true)
    ///
    ///    Future(5).greater(than: 5) -> Future(false)
    ///
    /// - Parameter value: The value to compare.
    /// - Returns: The result of the comparison wrapped in a Future.
    public func greater(than value: T) -> Future<Bool> {
        return self.map(to: Bool.self) { current in
            return current > value
        }
    }

    /// VaporExtensions: Check if the current value is greater than the passed value.
    ///
    ///    Future(5).greater(than: 4, or: CustomError()) -> Future(true)
    ///
    ///    Future(5).equal(than: 5, or: CustomError()) -> Throws CustomError
    ///
    /// - Parameters:
    ///   - value: The value to compare.
    ///   - error: The error to be thrown.
    /// - Returns: The result of the comparison wrapped in a Future.
    /// - Throws: Throws the passed error if the current value is not greater than the passed value.
    public func greater(than value: T, or error: Error) throws -> Future<Bool> {
        return try greater(than: value).true(or: error)
    }

    /// VaporExtensions: Check if the current value is greater or equal to the passed value.
    ///
    ///    Future(5).greaterOrEqual(to: 4) -> Future(true)
    ///
    ///    Future(5).greaterOrEqual(to: 5) -> Future(true)
    ///
    /// - Parameter value: The value to compare.
    /// - Returns: The result of the comparison wrapped in a Future.
    public func greaterOrEqual(to value: T) -> Future<Bool> {
        return self.map(to: Bool.self) { current in
            return current >= value
        }
    }

    /// VaporExtensions: Check if the current value is greater or equal to the passed value.
    ///
    ///    Future(5).greaterOrEqual(to: 5, or: CustomError()) -> Future(true)
    ///
    ///    Future(5).greaterOrEqual(to: 7, or: CustomError()) -> Throws CustomError
    ///
    /// - Parameters:
    ///   - value: The value to compare.
    ///   - error: The error to be thrown.
    /// - Returns: The result of the comparison wrapped in a Future.
    /// - Throws: Throws the passed error if the current value is not greater or equal to the passed value.
    public func greaterOrEqual(to value: T, or error: Error) throws -> Future<Bool> {
        return try greaterOrEqual(to: value).true(or: error)
    }

    /// VaporExtensions: Check if the current value is less than the passed value.
    ///
    ///    Future(5).less(than: 10) -> Future(true)
    ///
    ///    Future(5).less(than: 5) -> Future(false)
    ///
    /// - Parameter value: The value to compare.
    /// - Returns: The result of the comparison wrapped in a Future.
    public func less(than value: T) -> Future<Bool> {
        return self.map(to: Bool.self) { current in
            return current < value
        }
    }

    /// VaporExtensions: Check if the current value is less than the passed value.
    ///
    ///    Future(5).less(than: 10, or: CustomError()) -> Future(true)
    ///
    ///    Future(5).less(than: 5, or: CustomError()) -> Throws CustomError
    ///
    /// - Parameters:
    ///   - value: The value to compare.
    ///   - error: The error to be thrown.
    /// - Returns: The result of the comparison wrapped in a Future.
    /// - Throws: Throws the passed error if the current value is not less than the passed value.
    public func less(than value: T, or error: Error) throws -> Future<Bool> {
        return try less(than: value).true(or: error)
    }

    /// VaporExtensions: Check if the current value is less or equal to the passed value.
    ///
    ///    Future(5).lessOrEqual(to: 10) -> Future(true)
    ///
    ///    Future(5).lessOrEqual(to: 5) -> Future(true)
    ///
    /// - Parameter value: The value to compare.
    /// - Returns: The result of the comparison wrapped in a Future.
    public func lessOrEqual(to value: T) -> Future<Bool> {
        return self.map(to: Bool.self) { current in
            return current <= value
        }
    }

    /// VaporExtensions: Check if the current value is less or equal to the passed value.
    ///
    ///    Future(5).lessOrEqual(to: 10, or: CustomError()) -> Future(true)
    ///
    ///    Future(5).lessOrEqual(to: 7, or: CustomError()) -> Throws CustomError
    ///
    /// - Parameters:
    ///   - value: The value to compare.
    ///   - error: The error to be thrown.
    /// - Returns: The result of the comparison wrapped in a Future.
    /// - Throws: Throws the passed error if the current value is not less or equal to the passed value.
    public func lessOrEqual(to value: T, or error: Error) throws -> Future<Bool> {
        return try lessOrEqual(to: value).true(or: error)
    }
}
