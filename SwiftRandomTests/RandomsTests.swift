//
//  RandomsTests.swift
//  SwiftRandom
//
//  Created by Ethan Jackwitz on 13/10/2015.
//
//

import XCTest

extension Int {
    func times(f: () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }

    func times(@autoclosure f: () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }
}

let nRuns = 10000
let range = 0...(nRuns*10/nRuns)

class RandomsTests: XCTestCase {
    
    var resultsInt: [Int] = []
    
    override func setUp() {
        resultsInt.reserveCapacity(nRuns)
    }
    
    func testInt() {
        nRuns.times {
            self.resultsInt.append(Int.random(range))
        }
        
        resultsInt.forEach {
            XCTAssert(range ~= $0)
        }
    }
    
    
    func testRandomItemOnSlice() {
        resultsInt.removeAll(keepCapacity: true)
        
        let arr = [0,1,2,3,4,5,6,7,8,9]
        let slice = arr[1...8]
        
        nRuns.times {
            let x = slice.randomItem()
            self.resultsInt.append(x)
            
            //test the result is within the slice, not out of it.
            XCTAssert(slice.contains(x), "Got \(x) expected number in range \(slice)")
        }
        
        //test that each value in the slice was generated (it is likely, not 100%, run twice if fails)
        slice.forEach {
            XCTAssert(self.resultsInt.contains($0), "Results do not contain, \($0)")
        }
    }
}
