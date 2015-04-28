//
//  EZExtend+UIViewController.swift
//  medical
//
//  Created by zhuchao on 15/4/28.
//  Copyright (c) 2015年 zhuchao. All rights reserved.
//

import UIKit
// MARK: - UIViewController

extension UIViewController {
    
    var top: CGFloat {
        get {
            if let nav = self.navigationController {
                if nav.navigationBarHidden {
                    return view.top
                } else {
                    return nav.navigationBar.bottom
                }
            } else {
                return view.top
            }
        }
    }
    
    var bottom: CGFloat {
        get {
            if let tab = tabBarController {
                if tab.tabBar.hidden {
                    return view.bottom
                } else {
                    return tab.tabBar.top
                }
            } else {
                return view.bottom
            }
        }
    }
    
    
    var navigationBarHeight: CGFloat {
        get {
            if let nav = self.navigationController {
                return nav.navigationBar.h
            }
            
            return 0
        }
    }
    
    var navigationBarColor: UIColor? {
        get {
            return navigationController?.navigationBar.tintColor
        } set (value) {
            navigationController?.navigationBar.barTintColor = value
        }
    }
    
    var navigationBar: UINavigationBar? {
        get {
            return navigationController?.navigationBar
        }
    }
    
    var applicationFrame: CGRect {
        get {
            return CGRect (x: view.x, y: top, width: view.w, height: bottom - top)
        }
    }
}
