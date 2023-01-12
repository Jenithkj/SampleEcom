//
//  tenViewController.swift
//  projectFinal
//
//  Created by Jenith on 29/12/22.
//

import UIKit

class tenViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view11: UIView!
    
    @IBOutlet weak var view111: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.shadowColor = UIColor.black.cgColor
        view1.layer.shadowOpacity = 0.3
        view1.layer.shadowOffset = .zero
        view1.layer.shadowRadius = 1.5
        view11.layer.shadowColor = UIColor.black.cgColor
        view11.layer.shadowOpacity = 0.3
        view11.layer.shadowOffset = .zero
        view11.layer.shadowRadius = 1.5
        view111.layer.shadowColor = UIColor.black.cgColor
        view111.layer.shadowOpacity = 0.3
        view111.layer.shadowOffset = .zero
        view111.layer.shadowRadius = 1.5
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
