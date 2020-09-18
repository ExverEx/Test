//
//  ViewController.swift
//  Aptito menu
//
//  Created by Alexander on 17.09.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let mealProvider = MealProvider()

    @IBOutlet weak var DishesMenuCollection: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        DishesMenuCollection.delegate = self
        DishesMenuCollection.dataSource = self
        
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
        
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = collectionView.frame.width
        if (size > 450 && size < 800) {
            print(size)
            return CGSize(width: (size/2), height: (size/2))
        }
        if size > 900 {
            return CGSize(width: (size/5), height: (size/5))
        }
        return CGSize(width: size-16, height: size-16)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = DishesMenuCollection.dequeueReusableCell(withReuseIdentifier: "dishCell", for: indexPath) as! DishCell

        let meal = mealProvider.getMeal(index: indexPath)
        
        cell.dishImageView.image = meal.image
        cell.dishNameText.text = meal.name
        cell.dishNameText.backgroundColor = .black
        cell.dishPriceText.text = meal.getPrice()
        cell.dishPriceText.backgroundColor = .black
        
        return cell
    }
    
}


 

