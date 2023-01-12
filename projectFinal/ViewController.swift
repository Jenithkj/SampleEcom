//
//  ViewController.swift
//  projectFinal
//
//  Created by Jenith on 17/12/22.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController {
    
    @IBOutlet weak var facebookB: UIButton!
    @IBOutlet weak var googleB: UIButton!
    @IBOutlet weak var signB: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var maleB: UIButton!
    @IBOutlet weak var femaleB: UIButton!
    @IBOutlet weak var otherB: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        facebookB.setTitle("FACEBOOK", for: .normal)
        facebookB.layer.borderColor = UIColor.white.cgColor
        facebookB.layer.borderWidth = 1
        googleB.layer.borderWidth = 1
        googleB.layer.borderColor = UIColor.white.cgColor
        googleB.setTitle("GOOGLE", for: .normal)
        signB.layer.borderWidth = 0.5
        signB.layer.borderColor = UIColor(red: 192, green: 77, blue: 53, alpha: 1).cgColor
        signB.setTitle("SIGN IN", for: .normal)
        genderButton()
    
    }
    func genderButton(){
        maleB.layer.borderColor = UIColor.white.cgColor
        maleB.layer.borderWidth = 0.5
        maleB.setTitle("MALE", for: .normal)
        femaleB.layer.borderColor = UIColor.white.cgColor
        femaleB.layer.borderWidth = 0.5
        femaleB.setTitle("FEMALE", for: .normal)
        otherB.layer.borderColor = UIColor.white.cgColor
        otherB.layer.borderWidth = 0.5
        otherB.setTitle("OTHER", for: .normal)
    }
       
    @IBAction func maleButtonPressed(_ sender: Any) {
        switch (sender as AnyObject).tag {
        
        case 1:  maleB.layer.backgroundColor = UIColor.red.cgColor
            maleB.setTitle("MALE", for: .normal)
            maleB.setTitleColor(UIColor.black, for: .normal)
            maleB.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
            otherB.layer.borderColor = UIColor.white.cgColor
            otherB.layer.borderWidth = 0.5
            otherB.setTitle("OTHER", for: .normal)
            otherB.backgroundColor = UIColor.clear
            otherB.setTitleColor(UIColor.white, for: .normal)
            femaleB.layer.borderColor = UIColor.white.cgColor
            femaleB.layer.borderWidth = 0.5
            femaleB.setTitle("FEMALE", for: .normal)
            femaleB.backgroundColor = UIColor.clear
            femaleB.setTitleColor(UIColor.white, for: .normal)
            
            
            
        case 2:  femaleB.layer.backgroundColor = UIColor.red.cgColor
            femaleB.setTitle("FEMALE", for: .normal)
            femaleB.setTitleColor(UIColor.black, for: .normal)
            femaleB.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
            otherB.layer.borderColor = UIColor.white.cgColor
            otherB.layer.borderWidth = 0.5
            otherB.setTitle("OTHER", for: .normal)
            otherB.backgroundColor = UIColor.clear
            otherB.setTitleColor(UIColor.white, for: .normal)
            maleB.layer.borderColor = UIColor.white.cgColor
            maleB.layer.borderWidth = 0.5
            maleB.setTitle("MALE", for: .normal)
            maleB.backgroundColor = UIColor.clear
            maleB.setTitleColor(UIColor.white, for: .normal)
            
            
        case 3:  otherB.layer.backgroundColor = UIColor.red.cgColor
            otherB.setTitle("OTHER", for: .normal)
            otherB.setTitleColor(UIColor.black, for: .normal)
            otherB.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
            femaleB.layer.borderColor = UIColor.white.cgColor
            femaleB.layer.borderWidth = 0.5
            femaleB.setTitle("FEMALE", for: .normal)
            femaleB.backgroundColor = UIColor.clear
            femaleB.setTitleColor(UIColor.white, for: .normal)
            maleB.layer.borderColor = UIColor.white.cgColor
            maleB.layer.borderWidth = 0.5
            maleB.setTitle("MALE", for: .normal)
            maleB.backgroundColor = UIColor.clear
            maleB.setTitleColor(UIColor.white, for: .normal)
               
           default: break
           }
       }
      
    @IBAction func signinButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newView = storyboard.instantiateViewController(withIdentifier: "two")as! twoViewController; self.navigationController?.pushViewController(newView, animated: true)
    }
    
    
    
    
        }
      
    
