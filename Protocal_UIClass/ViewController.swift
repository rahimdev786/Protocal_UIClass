//
//  ViewController.swift
//  Protocal_UIClass
//
//  Created by arshad on 4/23/22.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var view1:UIView!{
        didSet{
            self.view1.blink()
            self.view1.cornor()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        DispatchQueue.main.async {
//            self.alert(msg: "Hello")
//        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}


