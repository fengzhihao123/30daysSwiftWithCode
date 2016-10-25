//
//  ViewController.swift
//  05-UIScrollView
//
//  Created by 冯志浩 on 16/10/24.
//  Copyright © 2016年 FZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let scrollView = FZHScrollView()
    let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    let picArray: NSArray = ["1","2","3","4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }
  
    func setupScrollView() -> Void {
        let frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 200)
        let fzhScrollView = FZHScrollView.init(frame: frame)
        fzhScrollView.initScrollView(picArray: picArray, superView: self.view)
    }
}

