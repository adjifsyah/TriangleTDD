//
//  TriangleTDDTests.swift
//  TriangleTDDTests
//
//  Created by Adji Firmansyah on 25/01/25.
//

import XCTest

final class TriangleTDDTests: XCTestCase {
    
    func testTriangle_whenInvalidInput_throwsError() {
        XCTAssertThrowsError(try detectTriangleType(-1, 2, 3)) { error in
            XCTAssertEqual(error as? TriangleError, TriangleError.invalidInput)
        }
    }
    
    func testTriangle_whenGivenEquilateralTriangle_shouldReturnEquilateral() {
        XCTAssertEqual(try detectTriangleType(1, 1, 1), "Segitiga sama sisi")
    }
    
    func testTriangle_whenGivenDetectIsoscelesTriangle_shouldReturnIsoscelesTriangle() {
        XCTAssertEqual(try detectTriangleType(1, 2, 1), "Segitiga sama kaki")
    }
    
    func testTriangle_whenGivenRandomTriangle_shouldReturnRandomTriangle() {
        XCTAssertEqual(try detectTriangleType(1, 2, 3), "Segitiga sembarang")
    }
}

extension TriangleTDDTests {
    func detectTriangleType(_ input1: Int, _ input2: Int, _ input3: Int) throws -> String {
        let input = [input1, input2, input3].sorted()
        for side in input where side < 0 {
            throw TriangleError.invalidInput
        }
        
        if input[0] == input[1], input[1] == input[2] {
            return "Segitiga sama sisi"
        } else if input[0] == input[1] || input[1] == input[2] {
            return "Segitiga sama kaki"
        } else {
            return "Segitiga sembarang"
        }
    }
    
}

enum TriangleError: Error {
    case invalidInput
}
