// 
//  Const.swift
//  EachNavigationBar
//
//  Created by Pircate(gao497868860@gmail.com) on 2018/11/20
//  Copyright © 2018年 Pircate. All rights reserved.
//

import UIKit

extension CGFloat {
    
    static let navigationBarHeight: CGFloat = 44.0
    
    static var statusBarMaxY: CGFloat {
      let sharedSelector = NSSelectorFromString("sharedApplication")
      guard
        UIApplication.responds(to: sharedSelector),
        let shared = UIApplication.perform(sharedSelector)?.takeUnretainedValue() as? UIApplication else
      {
        fatalError("[Extensions cannot access Application]")
        return .zero
      }
      if #available(iOS 13, *) {
        return shared
          .keyWindow?
          .windowScene?
          .statusBarManager?
          .statusBarFrame
          .maxY ?? 0
      }
      else {
        return shared
          .statusBarFrame
          .height
      }
    }
}

extension UIEdgeInsets {
    
    static let barLayoutPaddings: UIEdgeInsets = .init(top: 0, left: 16, bottom: 0, right: 16)
    
    static let barLayoutMargins: UIEdgeInsets = .init(top: 8, left: 16, bottom: 8, right: 16)
}
