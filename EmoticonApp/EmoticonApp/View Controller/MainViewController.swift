//
//  MainViewController.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/18.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var eventView : EventView?
    var sampleEmoticon : [Emoticon] = [Emoticon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView() {
        
        initEventView()
        sampleEmoticon = Emoticon.makeSample()
        
    }
    
    func initEventView() {
        
        let deviceSize = UIScreen.main.bounds.size
        let topMargin : CGFloat = UIApplication.shared.statusBarFrame.height
        let margin : CGFloat = 20
        let eventRect = CGRect(x: margin, y: topMargin+margin, width: deviceSize.width-2*margin, height: 200)
        eventView = EventView(frame: eventRect)
        
        if let eventViewReal = eventView {
            self.view.addSubview(eventViewReal)
        }
        
    }
    
}
