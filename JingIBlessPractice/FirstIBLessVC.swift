//
//  FirstIBLessVC.swift
//  JingIBlessPractice
//
//  Created by Jing Wang on 2/17/18.
//  Copyright © 2018 Jing Wang. All rights reserved.
//

import Anchorage
import UIKit

class FirstIBLessVC: UIViewController {

    fileprivate let xibView = XibView(frame: CGRect.zero)
    fileprivate let xibLessView = XiblessView(style: .cornerButtons)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }

}

private extension FirstIBLessVC {
    
    func configureViews() {
        
        // View Heirarchy
        
        view.addSubview(xibView)
        view.addSubview(xibLessView)
        
        // Style
        
        view.backgroundColor = UIColor.white
        
        // Layout
        
        // Xib view is placed at the top with half the height of the view
        xibView.topAnchor == view.topAnchor
        xibView.horizontalAnchors == view.horizontalAnchors
        xibView.heightAnchor == view.heightAnchor / 2.0
        
        // Xibless view is placed below the xib view, otherwise its layout is the same as the xib view
        xibLessView.topAnchor == xibView.bottomAnchor
        xibLessView.horizontalAnchors == xibView.horizontalAnchors
        xibLessView.heightAnchor == xibView.heightAnchor
    }
}

