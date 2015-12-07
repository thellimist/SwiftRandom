//
//  SwiftRandomIntSpec.h
//  SwiftRandom
//
//  Created by Ben on 07/12/2015.
//
//

import Quick
import Nimble
import SwiftRandom

class SwiftRandomIntSpec: QuickSpec {

    override func spec() {

        describe("random(range:)") {
            it("should return an Int within the range") {
                let random = Int.random(1...10)
                expect(random) >= 1
                expect(random) <= 10
            }

            context("when the range contains only one value") {
                it("should return the value") {
                    let random = Int.random(1...1)
                    expect(random) == 1
                }
            }
        }

        describe("random(lower:upper:)") {
            it("should return an Int within the upper and lower bounds") {
                let random = Int.random(1, 10)
                expect(random) >= 1
                expect(random) <= 10
            }

            context("when parameters are omitted") {
                it("should use the default range") {
                    let random = Int.random()
                    expect(random) >= 0
                    expect(random) <= 100
                }
            }

            context("when the range contains only one value") {
                it("should return the value") {
                    let random = Int.random(1, 1)
                    expect(random) == 1
                }
            }

            context("when the upper bound is smaller than the lower bound") {
                // TODO: should this method throw an exception?
            }
        }
    }

}
