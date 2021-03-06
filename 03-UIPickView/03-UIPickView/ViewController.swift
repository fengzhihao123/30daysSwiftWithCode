//
//  ViewController.swift
//  03-UIPickView
//
//  Created by 冯志浩 on 16/10/18.
//  Copyright © 2016年 FZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var addressLabel: UILabel!
    var pickView = FZHPickView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPickView()
    }
    
    func setupPickView() -> Void {
        pickView = FZHPickView.init(frame: CGRect(x: 10, y: 100, width: 394, height: 100))
        view.addSubview(pickView)
    }
    
    @IBAction func btnDidTouch(_ sender: UIButton) {
        let addressStr = String.init(format: "%@ %@ %@", pickView.provinceStr,pickView.citiesStr,pickView.areaStr)
        addressLabel.text = addressStr
    }
}

