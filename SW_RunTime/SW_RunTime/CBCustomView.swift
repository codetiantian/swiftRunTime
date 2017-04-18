//
//  CBCustomView.swift
//  SW_RunTime
//
//  Created by 这个夏天有点冷 on 2017/4/18.
//  Copyright © 2017年 YLT. All rights reserved.
//

import UIKit

class CBCustomView: UIView {
    
}

// MARK:- 自定义View
extension CBCustomView {
    
    //  声明key
    static let cbKey = UnsafeRawPointer.init(bitPattern: "cbKey".hashValue)
    
    // MARK:-扩展新属性 <存储属性>
    var bkColor : UIColor? {
        set {
            objc_setAssociatedObject(self, CBCustomView.cbKey, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        
        get {
             return objc_getAssociatedObject(self, CBCustomView.cbKey) as? UIColor
        }
    }
    
    func changeCurrentViewColor() {
        backgroundColor = bkColor
    }
}
