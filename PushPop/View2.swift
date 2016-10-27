//
//  View2.swift
//  PushPop
//
//  Created by techmaster on 10/27/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class View2: UIViewController {
    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var tf_password: UITextField!
    var users = ["hung":"123456", "hung1":"123", "hung2":"567"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func action_login(_ sender: AnyObject) {
        if let password = users[tf_user.text!] {
            if password == tf_password.text {
                print("Đăng nhập thành công")
                let v3 = self.storyboard?.instantiateViewController(withIdentifier: "V3") as! View3
                self.navigationController?.pushViewController(v3, animated: true)
            } else {
                print("Mật khẩu không đúng")
            }
        } else {
            print("Tài khoản không tồn tại")
        }
    }
    @IBAction func action_PopV2(_ sender: AnyObject) {
        let dashboardVC = navigationController!.viewControllers.filter { $0 is ViewController }.first!
        navigationController!.popToViewController(dashboardVC, animated: true)
    }
}
