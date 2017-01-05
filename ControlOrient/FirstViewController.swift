//
//  FirstViewController.swift
//  ControlOrient
//
//  Created by BrikerMan on 2017/1/5.
//  Copyright © 2017年 BrikerMan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override var shouldAutorotate: Bool {
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait]
    }
    @IBAction func onPush(_ sender: Any) {
        let vc = SecoundViewController(nibName: "SecoundViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
