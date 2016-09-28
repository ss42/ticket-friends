//
//  SearchBrowseViewController.swift
//  ticket&friends
//
//  Created by Sanjay Shrestha on 9/27/16.
//  Copyright © 2016 ticketandfriends. All rights reserved.
//

import UIKit

class SearchBrowseViewController: UIViewController {
    
    var categories = ["Music", "Business", "Food & Drink", "Community", "Arts", "Film & Media", "Sports & Fitness", "Charity", "Fashion"]
    var categoriesImage = ["event1", "business", "food", "community", "arts", "film", "sports", "charity", "fashion" ]

    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
extension SearchBrowseViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesImage.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCell", for: indexPath) as! CategoriesCell
        cell.categoriesImage.image = UIImage(named: categoriesImage[indexPath.row])
        cell.categoriesName.text = categories[indexPath.row]
        return cell
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width/3 - 20, height: 100)  //CGSizeMake((collectionView.frame.size.width / 3) - 20, 100)
    }
}
