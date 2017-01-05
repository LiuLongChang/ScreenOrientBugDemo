//
//  RootTabBarViewController.swift
//  ControlOrient
//
//  Created by BrikerMan on 2017/1/5.
//  Copyright © 2017年 BrikerMan. All rights reserved.
//

import UIKit

class RootTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = FirstViewController(nibName: "FirstViewController", bundle: nil)
        
        let nav = BaseNavViewController(rootViewController: vc1)
        let vc2 = UIViewController()
        vc2.view.backgroundColor = UIColor.yellow
        
        viewControllers = [nav, vc2]
        
        
        // Do any additional setup after loading the view.
    }
    
    override var shouldAutorotate: Bool {
        return self.selectedViewController?.shouldAutorotate ?? false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.selectedViewController?.supportedInterfaceOrientations ?? .portrait
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.selectedViewController?.preferredStatusBarStyle ?? .default
    }



}
