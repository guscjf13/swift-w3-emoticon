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
    var db : SQLite = SQLite()
    let margin : CGFloat = 20
    let topMargin : CGFloat = UIApplication.shared.statusBarFrame.height+40
    let deviceSize = UIScreen.main.bounds.size
    let emoticonSample = Emoticon.makeSample()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        initView()
        db.openDB()
        db.createTable()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        db.closeDB()
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
        emoTableView.initData(emoticons: emoticonSample)
        
    }
    
    @IBAction func emoBuyButtonTouched(_ sender: UIButton) {
        
        let contentView = sender.superview
        let cell = contentView?.superview as! UITableViewCell
        let indexPath = emoTableView.indexPath(for: cell)
        db.addEmoticon(emoticon: emoTableView.emoticonData[indexPath!.row])
        
    }
    
}
