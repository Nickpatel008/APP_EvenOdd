//
//  myResult.swift
//  EvenOdd
//
//  Created by DCS on 12/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class myResult: UIViewController {

    var result = ""
    
    private let myGreetLable:UILabel = {
        let greetText = UILabel()
        greetText.text = "Yeyyee"
        greetText.textAlignment = .center
        greetText.textColor = .purple
        greetText.font = UIFont.boldSystemFont(ofSize: 35)
        return greetText
    }()
    
    private let myResultLable:UILabel = {
        let resultText = UILabel()
        resultText.text = ""
        resultText.textAlignment = .center
        resultText.font = UIFont.init(name: "arial", size: 20)
        resultText.textColor = .black
        return resultText
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myBg)
        view.addSubview(myUiview)
        
        view.addSubview(myGreetLable)
        
        title = "Result"
        view.backgroundColor = .white
        
        view.addSubview(myResultLable)
        myResultLable.text = result
        
       
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myBg.frame = CGRect(x: 0, y: 0, width: 375, height: 669)
        myUiview.frame = CGRect(x: 32, y: 169, width: 310, height: 330)
        myGreetLable.frame = CGRect(x: 134, y: 226, width: 88, height: 41)
        
        myResultLable.frame = CGRect(x: 40, y: (view.height/2) - 30, width: view.width - 80, height: 60)
        
        
    }

}
