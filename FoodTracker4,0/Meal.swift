//
//  Meal.swift
//  FoodTracker4,0
//
//  Created by Rollin Francois on 10/15/16.
//  Copyright © 2016 Rollin Francois. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init?(name: String, photo:UIImage?, rating: Int) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
    
    
    
    
    
}


