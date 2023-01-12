//
//  sixViewController.swift
//  projectFinal
//
//  Created by Jenith on 27/12/22.
//

import UIKit

class sixViewController: UIViewController {
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textF1()
        textF2()
        textF3()

        // Do any additional setup after loading the view.
    }
    func textF1(){
        text1.attributedPlaceholder = NSAttributedString(string: "Current password", attributes: [
            .foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: 14)
        ])
        var frame: CGRect = text1.frame
            frame.size.height = 45
    
            text1.frame = frame

        text1.layer.masksToBounds = false
        text1.layer.shadowRadius = 0.3
        text1.layer.shadowColor = UIColor.black.cgColor
        text1.layer.shadowOffset = CGSize(width: 0, height: 0.3)
        text1.layer.shadowOpacity = 0.7
        
    }
    func textF2(){
        text2.attributedPlaceholder = NSAttributedString(string: "New password", attributes: [
            .foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: 14)
        ])
        var frame: CGRect = text2.frame
            frame.size.height = 45
    
            text2.frame = frame

        text2.layer.masksToBounds = false
        text2.layer.shadowRadius = 0.3
        text2.layer.shadowColor = UIColor.black.cgColor
        text2.layer.shadowOffset = CGSize(width: 0, height: 0.3)
        text2.layer.shadowOpacity = 0.7
        
    }
    func textF3(){
        text3.attributedPlaceholder = NSAttributedString(string: "Confirm password", attributes: [
            .foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: 14)
        ])
        var frame: CGRect = text3.frame
            frame.size.height = 45
    
            text3.frame = frame

        text3.layer.masksToBounds = false
        text3.layer.shadowRadius = 0.3
        text3.layer.shadowColor = UIColor.black.cgColor
        text3.layer.shadowOffset = CGSize(width: 0, height: 0.3)
        text3.layer.shadowOpacity = 0.7
        
    }
    
    @IBAction func closebutton1(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newView = storyboard.instantiateViewController(withIdentifier: "nine")as! nineViewController; self.navigationController?.pushViewController(newView, animated: true)
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
