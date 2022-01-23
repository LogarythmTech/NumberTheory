// BasicTests.swift
//
// This source file is part of the Swift Math open source project.
//
// Copyright (c) 2022 Logan Richards and the Swift Math project authors.
// Licensed under MIT
//
// See https://github.com/Logarithm-1/MATH/blob/main/LICENSE for license information

import XCTest
@testable import ModularArithmetic

final class BasicTests: XCTestCase {
    
    func testMod(value: Int, base: Int, equal: Int) {
        XCTAssertEqual(value.mod(base), equal)
    }
    
    func testDivision(dividend: Int, divisor: Int, modulus: Int, equal: Int) {
        XCTAssertEqual(dividend.divided(by: divisor, for: modulus), equal)
    }
    
    func testPower(value: Int, power: Int, base: Int, equal: Int) {
        XCTAssertEqual(value.power(of: power, for: base), equal)
    }
    
    func testInversePower(value: Int, power: Int, modulus: Int, equal: Int) {
        XCTAssertEqual(value.inversePower(of: power, for: modulus), equal)
    }
    
    func testMod() {
        testMod(value: 32, base: 26, equal: 6)
        testMod(value: -45, base: 26, equal: 7)
    }
    
    func testDivision() {
        testDivision(dividend: 7, divisor: 5, modulus: 12, equal: 11)
        testDivision(dividend: 7, divisor: 11, modulus: 12, equal: 5)
        testDivision(dividend: 29, divisor: 7, modulus: 12, equal: 11)
    }
    
    func testPower() {
        testPower(value: 4, power: 8, base: 26, equal: 16)
        testPower(value: 5, power: 213, base: 26, equal: 12)
        testPower(value: 8, power: 848518, base: 26, equal: 12)
        testPower(value: 3, power: 848518, base: 26, equal: 12)
    }
    
    func testInversePower() {
        testInversePower(value: 5, power: 72, modulus: 13, equal: 5)
        testInversePower(value: 6, power: 95, modulus: 13, equal: 6)
        testInversePower(value: 9, power: 1264, modulus: 13, equal: 3)
    }
    
    
    
}
