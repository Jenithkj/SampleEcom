//
//  fiveViewController.swift
//  projectFinal
//
//  Created by Jenith on 21/12/22.
//

import UIKit

class fiveViewController: UIViewController {

    let imageArray = ["KFC1","KFC2","KFC3"]
    var images = [UIImage]()
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        anim()
        labelf1()
        viewf1()
        viewf2()
       
    }
    func anim()
    {
        for i in 0..<imageArray.count
        {
            images.append(UIImage(named: imageArray[i])!)
        }
        image1.animationImages = images
        image1.animationDuration = 6
        image1.startAnimating()
    }
    func labelf1(){
        label1.layer.borderColor = UIColor.orange.cgColor
        label1.layer.borderWidth = 0.6
        label1.layer.cornerRadius = 0.4
    }
    func viewf1(){
        view1.layer.borderColor = UIColor.orange.cgColor
        view1.layer.borderWidth = 1
        view1.layer.cornerRadius = 10
    }
    func viewf2(){
        view2.layer.borderWidth = 1
        view2.layer.borderColor = UIColor.orange.cgColor
        view2.layer.cornerRadius = 4
        view2.layer.masksToBounds = true
        view2.backgroundColor = UIColor.orange
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
