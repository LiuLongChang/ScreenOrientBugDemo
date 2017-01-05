//
//  SecoundViewController.swift
//  ControlOrient
//
//  Created by BrikerMan on 2017/1/5.
//  Copyright © 2017年 BrikerMan. All rights reserved.
//

import UIKit

class SecoundViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override var shouldAutorotate: Bool {
        get {
            return ScreenManager.allowRotate
        }
    }
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.all]
    }


    @IBAction func Por(_ sender: Any) {
        ScreenManager.changeOrientation(.portrait)
    }
    
    @IBAction func lr(_ sender: Any) {
        ScreenManager.changeOrientation(.landscapeRight)
    }
    
    @IBAction func LandscapeToLeft(_ sender: Any) {
        ScreenManager.changeOrientation(.landscapeLeft)
    }
}
