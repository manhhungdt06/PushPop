//
//  ViewController.swift
//  PushPop
//
//  Created by techmaster on 10/27/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logo_img: UIImageView!
    @IBOutlet weak var lbl_text: UILabel!
    // @IBOutlet weak var lbl_start: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        logo_img!.alpha = 0
        lbl_text!.alpha = 0
        // lbl_start!.alpha = 0
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 1, animations: {
            self.logo_img!.alpha = 1
            }, completion: { (finished) in
                UIView.animate(withDuration: 1, animations: {
                    self.lbl_text!.center = CGPoint(x: self.logo_img!.center.x, y: 350)
                    self.lbl_text!.alpha = 1
                }, completion: { (finished) in
                    UIView.animate(withDuration: 3, animations: {
                    self.lbl_text!.alpha = 0
//                    self.lbl_start!.center = CGPoint(x: self.logo_img!.center.x, y: 600)
                    // self.lbl_start!.alpha = 1
                    let v2 = self.storyboard?.instantiateViewController(withIdentifier: "V2") as! View2
                    self.navigationController?.pushViewController(v2, animated: true)
                })
            })
        })
    }
    
//    @IBAction func startPush(_ sender: AnyObject) {
//        let v2 = self.storyboard?.instantiateViewController(withIdentifier: "V2") as! View2
//        self.navigationController?.pushViewController(v2, animated: true)
//    }
}

