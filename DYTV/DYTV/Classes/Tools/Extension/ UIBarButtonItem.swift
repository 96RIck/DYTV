//
//   UIBarButtonItem.swift
//  DYTV
//
//  Created by Rick on 2017/8/26.
//  Copyright © 2017年 Rick. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem
{
  
// 类方法对系统函数扩充：
/*
    class func createItem(imageName : String, HLImageName : String, size : CGSize) -> UIBarButtonItem
    {
        let  btn = UIButton()
        
        btn.setImage(UIImage.init(named: imageName), for: .normal)
        btn.setImage(UIImage.init(named: HLImageName), for: .highlighted)
        
        btn.frame = CGRect(origin: .zero, size: size)
        
        return UIBarButtonItem(customView: btn)
        
    }
*/
    
// 构造方法对系统函数扩充 ：
// 便利构造函数 ：1>必须以convenience开头 2>在构造函数中必须明确调用一个设计的构造函数 （self）
    
    
    convenience init(imageName : String, HLImageName : String = "", size : CGSize = CGSize.zero) {

        //创建UIButton
        let  btn = UIButton()
       
        //设置btn的图片
        btn.setImage(UIImage.init(named: imageName), for: .normal)
        if HLImageName != ""
        {
            btn.setImage(UIImage.init(named: HLImageName), for: .highlighted)
        }
        
        //设置图片尺寸
        if size == CGSize.zero
        {
            btn.sizeToFit()
        }
        else
        {
            btn.frame = CGRect(origin: .zero, size: size)
        }
       
        //创建UIBarButtonItem
        self.init(customView: btn)
    }
    
}
