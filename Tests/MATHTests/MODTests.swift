import XCTest
@testable import MATH

final class MODTests: XCTestCase {
    
    func testMODGenerics() {
        let a: MOD = MOD<Int>(base: 2)
    }
    
    func testMOD() {
        let a: MOD = MOD<Int>(base: 2)
        
        XCTAssertTrue(a.mod(8) == 0)
        XCTAssertTrue(a.mod(7) == 1)
        XCTAssertTrue(a.mod(-1) == 1)
    }
    
    
    
    func testGreatestCommonDenominator() {
        let a: MOD = MOD<Int>(base: 2)
        
        XCTAssertTrue(a.greatestCommonDenominator(5, 9) == 1)
        XCTAssertTrue(a.greatestCommonDenominator(25, 45) == 5)
    }
    
    func testGreatestCommonDenominatorExtended() {
        let a: MOD = MOD<Int>(base: 2)
        var x: Int = 0
        var y: Int = 0
        var gcd = a.greatestCommonDenominatorExtended(123, 56, firstCoefficient: &x, secondCoefficient: &y)
        
        XCTAssertEqual(x, -5)
        XCTAssertEqual(y, 11)
        XCTAssertEqual(gcd, 1)
        
        gcd = a.greatestCommonDenominatorExtended(12, 7, firstCoefficient: &x, secondCoefficient: &y)
        
        XCTAssertEqual(x, 3)
        XCTAssertEqual(y, -5)
        XCTAssertEqual(gcd, 1)
        
        gcd = a.greatestCommonDenominatorExtended(12, 5, firstCoefficient: &x, secondCoefficient: &y)
        
        XCTAssertEqual(x, -2)
        XCTAssertEqual(y, 5)
        XCTAssertEqual(gcd, 1)
    }
    
    func testDivision() {
        let base12: MOD = MOD<Int>(base: 12)
        XCTAssertEqual(base12.divide(7, 5), 11)
        XCTAssertEqual(base12.divide(7, 11), 5)
        XCTAssertEqual(base12.divide(29, 7), 11)
    }
    
    
    
}
