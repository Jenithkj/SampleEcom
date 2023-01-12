//
//  eightViewController.swift
//  projectFinal
//
//  Created by Jenith on 28/12/22.
//

import UIKit

class eightViewController: UIViewController {
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textF1()
        tf2.text = "Write your review"
        tf2.textColor = UIColor.black
        textF2()

        // Do any additional setup after loading the view.
    }
    func textF1(){
        tf1.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [
            .foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: 14)
        ])
        var frame: CGRect = tf1.frame
            frame.size.height = 45
        tf1.frame = frame
        tf1.layer.masksToBounds = false
        tf1.layer.shadowRadius = 0.3
        tf1.layer.shadowColor = UIColor.black.cgColor
        tf1.layer.shadowOffset = CGSize(width: 0, height: 0.3)
        tf1.layer.shadowOpacity = 0.7
    }
    func textF2(){
        var frame: CGRect = tf2.frame
            frame.size.height = 280
        tf2.frame = frame
        tf2.layer.masksToBounds = false
        tf2.layer.shadowRadius = 0.3
        tf2.layer.shadowColor = UIColor.black.cgColor
        tf2.layer.shadowOffset = CGSize(width: 0, height: 0.3)
        tf2.layer.shadowOpacity = 0.7
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
