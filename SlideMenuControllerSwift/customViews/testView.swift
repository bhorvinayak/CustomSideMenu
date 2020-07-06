//
//  testView.swift
//  customHeaderViewDemo
//
//  Created by Ashwini Apurkar on 02/07/20.
//  Copyright © 2020 Ashwini Apurkar. All rights reserved.
//

import UIKit

class testView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var menuBtn: UIButton!
    var currentVC = UIViewController()
    
    //MARK:- Load xib
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    //MARK:- User defined functions
    func commonInit() {
        Bundle.main.loadNibNamed("testView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    //MARK:- Button Clicks
    @IBAction func sideMenuBtnCliked(_ sender: Any)
    {
        //slideMenuController()?.toggleLeft()
        currentVC.slideMenuController()?.addLeftGestures()
    }
    
    @IBAction func notifictnBtnCliked(_ sender: Any)
    {
//        let storyBoard: UIStoryboard = UIStoryboard(name: VCIdentifier.main, bundle: nil)
//        let vc = storyBoard.instantiateViewController(withIdentifier: VCIdentifier.nextViewController) as! NextViewController
//        currentVC.slideMenuController()?.changeMainViewController(vc, close: true)
    }
    
    @IBAction func cartBtnCliked(_ sender: Any)
    {
    }
    
    @IBAction func mesgBtnCliked(_ sender: Any)
    {
    }

}

