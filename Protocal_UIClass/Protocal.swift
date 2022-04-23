//
//  Protocal.swift
//  Protocal_UIClass
//
//  Created by arshad on 4/23/22.
//

import UIKit


protocol Blink{
    func blink()
}


protocol Cornor{
    func cornor()
}


extension Blink  where Self:UIView {
    
    func blink(){
        alpha = 1
        UIView.animate(withDuration: 0.5, delay: 0.2, options:[.repeat , .autoreverse]) {
            self.alpha = 0
        }
    }
}


extension Cornor where Self:UIView{
    
    func cornor(){
        self.layer.cornerRadius = 10
        self.backgroundColor = .blue
    }
}

//FInally apply fro this
extension UIView : Blink,Cornor{
}




extension UIViewController {
    func alert(msg:String?){
        let vc = UIAlertController(title: "ALert", message: msg, preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(vc, animated: true)
    }
}
