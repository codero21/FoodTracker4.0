//
//  RatingControl.swift
//  FoodTracker4,0
//
//  Created by Rollin Francois on 10/14/16.
//  Copyright © 2016 Rollin Francois. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // MARK: Properties
    var rating = 0
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5
    
    
    
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<starCount {
            
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            
            button.backgroundColor = UIColor.red
            
            // Tracks button clicks
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for:
                .touchDown)
            
            ratingButtons += [button]
            
            addSubview(button)
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        //...
        return CGSize(width: 240, height: 44)
    }
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for(index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (44 + spacing))
            
            button.frame = buttonFrame
        }
        
    }

    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button Pressed 👍🏾")
    }
}
