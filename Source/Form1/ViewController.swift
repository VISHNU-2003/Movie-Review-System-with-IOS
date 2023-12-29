//
//  ViewController.swift
//  Form1
//
//  Created by Student on 30/08/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var segLbl: UISegmentedControl!
    
    @IBOutlet weak var img: UIImageView!
    @IBAction func segAct(_ sender: Any) {
        switch segLbl.selectedSegmentIndex{
        case 0:
            img.image = UIImage(named: "a")
        case 1:
            img.image = UIImage(named: "b")
        case 2:
            img.image = UIImage(named: "c")
        default:
            img.image = UIImage(named: "a")
        }
            
        
    }
    
    @IBOutlet weak var sliderLbl: UILabel!
    @IBOutlet weak var sliderBtn: UISlider!
    @IBAction func sliderAction(_ sender: Any) {
        sliderLbl.text = String(Int(sliderBtn.value))
    }
    
    
    @IBOutlet weak var Btn: UIButton!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBAction func switchAct(_ sender: Any) {
        if switchBtn.isOn == true{
            Btn.isHidden = false
        }
        else{
            Btn.isHidden = true
        }
    }
    
    
 
    @IBOutlet weak var cont: UILabel!
    @IBOutlet weak var conf: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var bAdd: UILabel!
    @IBOutlet weak var lName: UILabel!
    @IBOutlet weak var fName: UILabel!
    @IBOutlet weak var switchBtn2: UISwitch!
    @IBAction func switchAct2(_ sender: Any) {
        if switchBtn2.isOn == true{
            view.backgroundColor = UIColor.black
            fName.textColor = UIColor.white
            lName.textColor = UIColor.white
            bAdd.textColor = UIColor.white
            sliderLbl.textColor = UIColor.white
            age.textColor = UIColor.white
            conf.textColor = UIColor.white
            cont.textColor = UIColor.white
           
        }
        else{
            view.backgroundColor = UIColor.white
            fName.textColor = UIColor.black
            lName.textColor = UIColor.black
            bAdd.textColor = UIColor.black
            sliderLbl.textColor = UIColor.black
            age.textColor = UIColor.black
            conf.textColor = UIColor.black
            cont.textColor = UIColor.black
        }
    }
}
