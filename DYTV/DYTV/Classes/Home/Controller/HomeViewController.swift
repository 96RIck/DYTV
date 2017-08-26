//
//  HomeViewController.swift
//  DYTV
//
//  Created by Rick on 2017/8/19.
//  Copyright © 2017年 Rick. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupUI()
        
    }
    

}


// MARK:) 设置UI界面

extension HomeViewController
{
    func setupUI()
    {
        //1.设置导航栏
        setupNavigationBar()
    }
    
    private func setupNavigationBar()
    {
        //1.设置左侧的item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        //2.设置右侧的item
        let size = CGSize(width: 40, height: 40)

// 系统构造方法进行运用:
        
        let historyItem = UIBarButtonItem(imageName: "image_my_history", HLImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", HLImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", HLImageName: "Image_scan_click", size: size)
        
// 类方法运用：
//        let historyItem = UIBarButtonItem.createItem(imageName: "image_my_history", HLImageName: "Image_my_history_click", size: size)
//       let searchItem = UIBarButtonItem.createItem(imageName: "btn_search",  HLImageName: "btn_search_clicked", size: size)
//        let qrcodeItem = UIBarButtonItem.createItem(imageName: "Image_scan", HLImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
        
    }
    
    
    
}
