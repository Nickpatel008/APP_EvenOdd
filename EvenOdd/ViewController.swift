//
//  ViewController.swift
//  EvenOdd
//
//  Created by DCS on 12/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "ODD EVEN FINDER"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.init(name: "arial", size: 25)
        label.font = UIFont.boldSystemFont(ofSize: 27)
        //label.backgroundColor = .blue
        return label
    }()
    
    private let myLabel1:UILabel = {
        let label1 = UILabel()
        label1.text = "Number"
        label1.textColor = .purple
        label1.textAlignment = .left
        //label.backgroundColor = .blue
        return label1
    }()
    
    private let myNumtxt:UITextField = {
        let inpnumber = UITextField()
        inpnumber.textColor = .white
        inpnumber.placeholder = "Enter Number"
        inpnumber.backgroundColor = .black
        inpnumber.alpha = 0.4
        inpnumber.borderStyle = .roundedRect
        inpnumber.textAlignment = .center
        return inpnumber
    }()
    
    private let myButton:UIButton = {
        let checkNumber = UIButton()
        checkNumber.setTitle("Click Me!", for: .normal)
        checkNumber.layer.cornerRadius = 7
        checkNumber.addTarget(self, action: #selector(checkNum), for: .touchUpInside)
        checkNumber.backgroundColor = .purple
        checkNumber.alpha = 0.6
        return checkNumber
    }()
    
    // Image for BG...
    
    private let myBg:UIImageView = {
        let mybg = UIImageView()
        mybg.contentMode = .scaleAspectFill
        mybg.clipsToBounds = true
        mybg.image = UIImage(named: "BG")
        return mybg
    }()
    
    private let myUiview:UIView = {
        let myuiview = UIView()
        myuiview.backgroundColor = .white
        myuiview.layer.cornerRadius = 30
        myuiview.alpha = 0.6
        myuiview.layer.shadowColor = UIColor.gray.cgColor
        myuiview.layer.shadowOpacity = 1
        myuiview.layer.shadowOffset = .zero
        myuiview.layer.shadowRadius = 10
        return myuiview
    }()
    
    // Adding ALL UI Elements...
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(myBg)
        view.addSubview(myUiview)
        view.addSubview(myLabel)
        view.addSubview(myLabel1)
        view.addSubview(myNumtxt)
        view.addSubview(myButton)
        
        
    }

    // Set UI Elements in Frame...
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myBg.frame = CGRect(x: 0, y: 0, width: 375, height: 669)
        myUiview.frame = CGRect(x: 26, y: 177, width: 310, height: 330)
        myLabel.frame = CGRect(x: 47, y: 210, width: view.width - 40, height: 35)
        myLabel1.frame = CGRect(x: 55, y: myLabel.bottom + 30, width: view.width - 40, height: 40)
        myNumtxt.frame = CGRect(x: 55, y: myLabel1.bottom + 20, width: 250, height: 40)
        myButton.frame = CGRect(x: 108, y: myNumtxt.bottom + 20, width: 129, height: 40)
        
        
    }
    
    @objc func checkNum(){
        print("clicked")
        
        let vc = myResult()
        
        guard let num = Int(myNumtxt.text!) else {
            let alert = UIAlertController(title: "Oops!", message: "Please Enter Number...", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dissmiss", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert,animated: true,completion: nil)
            }
            return
        }
        
        if num % 2 == 0 {
            vc.result = "Number is even."
        }
        else {
            vc.result = "Number is odd."
        }
        
        navigationController?.pushViewController(vc, animated: true)
        
        // there is no class with this name: myResult
        // we have to write i thought when i create a new file it will make automatically
        // it will but only if you make a cocoa touch class. you made a swift file
        // ok so i have to make class in that file and than this will work?
        // first delete the existing one
        // simultr is blank? bcz of ntg in 2nd page ? yes
        
//        let nav = UINavigationController(rootViewController: vc)
//        nav.modalPresentationStyle = .fullScreen
//        nav.setNavigationBarHidden(true, animated: false)
//        present(nav, animated: false)

        // dont use this presentation style. use the push navigation we did earlier
        // Something
        
    }
    
    
    
    
    
}

