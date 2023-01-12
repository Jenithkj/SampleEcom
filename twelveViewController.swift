//
//  twelveViewController.swift
//  projectFinal
//
//  Created by Jenith on 30/12/22.
//

import UIKit

class twelveViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    let imageArray = ["KFC1","KFC2","KFC3"]
    var images = [UIImage]()
    @IBOutlet weak var addbutton: UIButton!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        anim()
        labelf1()
        labelf2()
        view1.layer.shadowColor = UIColor.black.cgColor
        view1.layer.shadowOpacity = 0.3
        view1.layer.shadowOffset = .zero
        view1.layer.shadowRadius = 1.5
        view2.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    func anim()
    {
        for i in 0..<imageArray.count
        {
            images.append(UIImage(named: imageArray[i])!)
        }
        image1.animationImages = images
        image1.animationDuration = 5
        image1.startAnimating()
    }
    func labelf1(){
        label1.layer.borderColor = UIColor.orange.cgColor
        label1.layer.borderWidth = 0.9
        label1.layer.cornerRadius = 0.3
    }
    func labelf2(){
        label2.layer.borderColor = UIColor.orange.cgColor
        label2.layer.borderWidth = 0.9
        label2.layer.cornerRadius = 0.3
    }
    
    @IBAction func addButton(_ sender: Any) {
        view2.isHidden = false
    }
    
    @IBAction func reviewButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newView = storyboard.instantiateViewController(withIdentifier: "seven")as! sevenViewController; self.navigationController?.pushViewController(newView, animated: true)
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
