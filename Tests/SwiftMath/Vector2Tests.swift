import XCTest
@testable import SwiftMath

class Vector2fTests: XCTestCase {
    func testVectorsAreEqualUsingEquatable() {
        let a = Vector2f(1.0)
        let b = Vector2f(1.0)
        XCTAssertEqual(a, b)
    }
    
    func testVectorsAreNotEqualUsingEquatable() {
        let a = Vector2f(1.0)
        let b = Vector2f(2.0)
        XCTAssertNotEqual(a, b)
    }
    
    func testVectorMultiplyWithMatrix4x4() {
        let a = Vector2f(1.0, 0.0)
        let b = Matrix4x4f.rotate(z: Float.pi/2.0)
        let c = a * b
        
        XCTAssertEqualWithAccuracy(0.0, c.x, accuracy: 0.001)
        XCTAssertEqualWithAccuracy(1.0, c.y, accuracy: 0.001)
    }
}