//
//  ViewController.swift
//  SW_RunTime
//
//  Created by 这个夏天有点冷 on 2017/4/18.
//  Copyright © 2017年 YLT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createCustomView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController {
    
    fileprivate func createCustomView() {
        
        let viewWH : CGFloat = 100.0
        
        let cusView : CBCustomView = CBCustomView()
        cusView.frame = CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: viewWH, height: viewWH))
        cusView.center = self.view.center
        cusView.bkColor = UIColor.green
        cusView.changeCurrentViewColor()
        
        self.view.addSubview(cusView)
    }
    
}
