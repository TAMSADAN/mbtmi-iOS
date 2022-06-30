//
//  TabBarViewController.swift
//  MBTMI
//
//  Created by 송영모 on 2022/06/30.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabBar()
    }
    
    func setTabBar() {
        let homeViewController = HomeViewController()
        let postViewController = PostViewController()
        let myPageViewController = MyPageViewController()
        
        homeViewController.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), tag: 0)
        postViewController.tabBarItem = UITabBarItem(title: "게시판", image: UIImage(systemName: "doc.plaintext"), tag: 1)
        myPageViewController.tabBarItem = UITabBarItem(title: "내정보", image: UIImage(systemName: "person"), tag: 2)
        
        
        let nav1 = UINavigationController(rootViewController: homeViewController)
        let nav2 = UINavigationController(rootViewController: postViewController)
        let nav3 = UINavigationController(rootViewController: myPageViewController)
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = .white
        
        setViewControllers([nav1, nav2, nav3], animated: false)
    }
}
