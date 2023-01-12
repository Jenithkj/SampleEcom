//
//  nineViewController.swift
//  projectFinal
//
//  Created by Jenith on 28/12/22.
//

import UIKit

class nineViewController: UIViewController {

    @IBOutlet weak var editB: UIButton!
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewF1()
        bannerView.isHidden = true
        // Do any additional setup after loading the view.
    }
    func viewF1(){
        view1.layer.shadowColor = UIColor.black.cgColor
        view1.layer.shadowOpacity = 0.5
        view1.layer.shadowOffset = .zero
        view1.layer.shadowRadius = 5
    }

    @IBAction func editButton(_ sender: UIButton) {
        bannerView.isHidden = false
        tabBarController?.tabBar.isHidden = true
    }
    
    @IBAction func exitButton(_ sender: Any) {
        bannerView.isHidden = true
        tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func changepasswordButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newView = storyboard.instantiateViewController(withIdentifier: "six")as! sixViewController; self.navigationController?.pushViewController(newView, animated: true)
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
