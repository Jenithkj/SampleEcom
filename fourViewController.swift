//
//  fourViewController.swift
//  projectFinal
//
//  Created by Jenith on 20/12/22.
//

import UIKit

class fourViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet weak var C41: UICollectionView!
    @IBOutlet weak var C42: UICollectionView!
    
    
    
    var items1 = ["Mobile","TV","Fridge","Laptop","Air conditioner","TV"]
    var itemsimage = ["mobile", "tv","fridge","laptop","ac", "tv"]
    var itemsimage2 = ["food1","food2","food3","food4","food5","food1"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == C41){
        return items1.count
    }
        return itemsimage2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell1 = C41.dequeueReusableCell(withReuseIdentifier: "fourcell", for: indexPath) as! fourCollectionViewCell
        cell1.fourcellLabel.text = items1[indexPath.row]
        cell1.fourcellImage.image = UIImage(named: itemsimage[indexPath.row])
        
        if (collectionView == C42){
            let cell2 = C42.dequeueReusableCell(withReuseIdentifier: "four2cell", for: indexPath) as! four2CollectionViewCell
            cell2.imageC2.image = UIImage(named: itemsimage2[indexPath.item])
            return cell2
        
    }
        return cell1
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (collectionView == C42){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newView = storyboard.instantiateViewController(withIdentifier: "five")as! fiveViewController; self.navigationController?.pushViewController(newView, animated: true)
    }
    }
    
    @IBOutlet weak var sortButton: UIButton!
    
    @IBOutlet weak var filterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
