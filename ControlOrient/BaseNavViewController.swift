//
//  BaseNavViewController.swift
//  ControlOrient
//
//  Created by BrikerMan on 2017/1/5.
//  Copyright © 2017年 BrikerMan. All rights reserved.
//

import UIKit

class BaseNavViewController: UINavigationController {


    override var shouldAutorotate: Bool {
        return self.visibleViewController?.shouldAutorotate ?? false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.visibleViewController?.supportedInterfaceOrientations ?? .portrait
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.visibleViewController?.preferredStatusBarStyle ?? .default
    }


}
