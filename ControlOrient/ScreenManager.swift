//
//  ScreenManager.swift
//  ControlOrient
//
//  Created by BrikerMan on 2017/1/5.
//  Copyright © 2017年 BrikerMan. All rights reserved.
//

import Foundation

import UIKit

let ScreenManager = ScreenManagerTool.shared

class ScreenManagerTool {
    
    static let shared = ScreenManagerTool()
    
    var allowRotate = false
    
    var width : CGFloat {
        get {
            return UIScreen.main.bounds.size.width
        }
    }
    
    var height: CGFloat {
        get {
            return UIScreen.main.bounds.size.height
        }
    }
    
    
    func changeOrientation(_ orientation: UIInterfaceOrientation) {
        ScreenManager.allowRotate = true
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
        ScreenManager.allowRotate = false
    }
}
