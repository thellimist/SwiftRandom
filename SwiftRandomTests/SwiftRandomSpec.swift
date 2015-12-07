//
//  SwiftRandomSpec.h
//  SwiftRandom
//
//  Created by Ben on 07/12/2015.
//
//

import Quick
import Nimble
import SwiftRandom

class SwiftRandomSpec: QuickSpec {

    override func spec() {
        it("should work") {
            let random = Int.random()
            expect(random) >= 0
        }
    }

}
