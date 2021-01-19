//
//  MainViewController.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/18.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var emoTableView: EmoTableView!
    var eventView : EventView?
    
    let margin : CGFloat = 20
    let topMargin : CGFloat = UIApplication.shared.statusBarFrame.height
    let deviceSize = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        initView()
        
    }
    
    func initView() {
        
        initEventView()
        initEmoTableView()
        
    }
    
    func initEventView() {
        
        let eventRect = CGRect(x: margin, y: topMargin+margin, width: deviceSize.width-2*margin, height: 200)
        eventView = EventView(frame: eventRect)
        if let eventViewReal = eventView {
            self.view.addSubview(eventViewReal)
        }
        
    }
    
    func initEmoTableView() {
        
        emoTableView.delegate = emoTableView
        emoTableView.dataSource = emoTableView
        let emoRect = CGRect(x: margin, y: topMargin+margin+(eventView?.frame.height)!+margin,
                               width: deviceSize.width-2*margin, height: deviceSize.height-topMargin-(eventView?.frame.height)!-2*margin)
        emoTableView.frame = emoRect
        
    }
    
}
