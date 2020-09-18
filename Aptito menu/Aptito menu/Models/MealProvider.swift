//
//  MealProvider.swift
//  Aptito menu
//
//  Created by Alexander on 18.09.2020.
//

import Foundation
import UIKit

class MealProvider {
        
        var meals = [Meal]()
    
    func getMeal(index: IndexPath) -> Meal {
        
        let intIndex = Int(index.row)
        
        
        if meals.indices.contains(intIndex) == false {

            var meal = Meal()
            meals.insert(meal,at: intIndex)
        }
            return meals[intIndex]
    
        }
    
    }
