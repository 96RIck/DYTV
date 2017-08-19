//
//  MainViewController.swift
//  DYTV
//
//  Created by Rick on 2017/8/19.
//  Copyright © 2017年 Rick. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
        
    }

    private func addChildVc(storyName: String)
    {
        //1.通过storyboard 获取控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        
        //2.将childVc 作为自控制器
        addChildViewController(childVc)
    }

}
