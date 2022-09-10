//
//  Ch9_AlertTextField.swift
//  swift4.2
//
//  Created by 楊惠如 on 2021/9/1.
//

import UIKit

class Ch9_AlertTextField: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let alert = UIAlertController(title: "登入", message: "請輸入登入資訊", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let loginAction = UIAlertAction(title: "登入", style: .default) { (action) in
            let uid = alert.textFields![0].text
            let pwd = alert.textFields![1].text
            
            print("帳號: \(uid!)")
            print("密碼: \(pwd!)")
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "email"
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "password"
            textField.isSecureTextEntry = true
        }
        
        alert.addAction(cancelAction)
        alert.addAction(loginAction)
        
        present(alert, animated: true, completion: nil)
    }
}
