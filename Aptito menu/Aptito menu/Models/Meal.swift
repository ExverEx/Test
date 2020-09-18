//
//  Meal.swift
//  Aptito menu
//
//  Created by Alexander on 18.09.2020.
//

import Foundation
import UIKit

class Meal {
        
        var image: UIImage
        var name: String
        var price: Int
        
        let dishImageNames = ["1","2","3","4","5","6","7","8","9","0","10","11","12","13","14","15"]
        let products = ["Картофель","Макароны","Перец","Баклажаны","Говядина","Курица","Шашлык","Отбивная","Рыба","Салат","Суп пюре","Котлеты по-киевски","Пельмени","Паста по-итальянски","Каша"]
        let prices = [150,324,654,345,125,957,386,946,358,286,648,555,474,486,457]
        
        init() {
        
            self.image = UIImage(named: dishImageNames.randomElement() ?? "0")!
            self.name = products.randomElement() ?? "Пустая тарелка"
            self.price = prices.randomElement() ?? 0
        }
        
    func getPrice() -> String {
            return String(self.price) + " р."
        }
        
    }
