//
//  sevenViewController.swift
//  projectFinal
//
//  Created by Jenith on 27/12/22.
//

import UIKit

class sevenViewController: UIViewController {
  
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var blurview: UIView!
    
    
    @IBOutlet weak var imageView1: UIImageView!
    var image1 = UIImage(named:"congo")
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var closeB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewF1()
        blurview.isHidden = true
        // Do any additional setup after loading the view.
    }
    func viewF1(){
        view1.layer.shadowColor = UIColor.black.cgColor
        view1.layer.shadowOpacity = 0.5
        view1.layer.shadowOffset = .zero
        view1.layer.shadowRadius = 5
    }

    @IBAction func confirmB(_ sender: UIButton) {
        
            
        if sender.isSelected == false {
            blurview.isHidden = false
            blurview.backgroundColor = UIColor.black.withAlphaComponent(0.75)
            
            
           }else {
               sender.isSelected = false
               blurview.isHidden = true
           }
        
    }
    
    @IBAction func closeButton(_ sender: Any) {
        blurview.isHidden = true
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
