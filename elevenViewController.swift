//
//  elevenViewController.swift
//  projectFinal
//
//  Created by Jenith on 30/12/22.
//

import UIKit

class elevenViewController: UIViewController {

    @IBOutlet weak var deals: UIButton!
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.shadowColor = UIColor.black.cgColor
        view1.layer.shadowOpacity = 0.3
        view1.layer.shadowOffset = .zero
        view1.layer.shadowRadius = 1.5
        // Do any additional setup after loading the view.
    }
    @IBAction func dealsbutton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newView = storyboard.instantiateViewController(withIdentifier: "twelve")as! twelveViewController; self.navigationController?.pushViewController(newView, animated: true)
        
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
