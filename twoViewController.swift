//
//  twoViewController.swift
//  projectFinal
//
//  Created by Jenith on 18/12/22.
//

import UIKit

class twoViewController: UIViewController {
    
    @IBOutlet weak var FB2: UIButton!
    @IBOutlet weak var GB2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FB2.setTitle("FACEBOOK", for: .normal)
        FB2.layer.borderColor = UIColor.red.cgColor
//        FB2.titleLabel?.font = UIFont.systemFont(ofSize: 22.0, weight: .bold)
        FB2.layer.borderWidth = 1
        GB2.layer.borderWidth = 1
        GB2.layer.borderColor = UIColor.red.cgColor
        GB2.setTitle("GOOGLE", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func siginButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newView = storyboard.instantiateViewController(withIdentifier: "three")as! threeViewController; self.navigationController?.pushViewController(newView, animated: true)
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
