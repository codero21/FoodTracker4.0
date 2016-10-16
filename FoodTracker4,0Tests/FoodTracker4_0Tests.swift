//
//  FoodTracker4_0Tests.swift
//  FoodTracker4,0Tests
//
//  Created by Rollin Francois on 10/11/16.
//  Copyright © 2016 Rollin Francois. All rights reserved.
//

import UIKit
import XCTest
@testable import FoodTracker4_0

class FoodTracker4_0Tests: XCTestCase {
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        // Failure cases.
        let badRating = Meal(name: "Really bad Rating", photo: nil, rating: -1)
        XCTAssertNotNil(badRating)
        
    }
    
}
