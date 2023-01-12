//
//  threeViewController.swift
//  projectFinal
//
//  Created by Jenith on 18/12/22.
//

import UIKit
import SideMenu

class threeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var COL1: UICollectionView!
    @IBOutlet weak var COL2: UICollectionView!
    
    
    var items1 = ["Eatout", "Electronics","Fashion","Activities","Home decor","Hotel"]
    var itemsimage = ["Eatout1", "Electronics1","Fashion","Activities","Home decor","hotel1"]
    var itemsimage2 = ["biriyani","chappathi","alfaham","shawarma"]
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == COL1){
        return items1.count
    }
        return itemsimage2.count
    }
            
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell1 = COL1.dequeueReusableCell(withReuseIdentifier: "eatoutcell", for: indexPath) as! threeCollectionViewCell
        cell1.myLabel1.text = items1[indexPath.row]
        cell1.myImage1.image = UIImage(named: itemsimage[indexPath.row])
        
        if (collectionView == COL2){
            let cell2 = COL2.dequeueReusableCell(withReuseIdentifier: "c1", for: indexPath) as! three2CollectionViewCell
            cell2.image1.image = UIImage(named: itemsimage2[indexPath.row])
            return cell2
        
    }
        return cell1
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newView = storyboard.instantiateViewController(withIdentifier: "four")as! fourViewController; self.navigationController?.pushViewController(newView, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true 

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
