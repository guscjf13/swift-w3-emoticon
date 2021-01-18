//
//  MainViewController.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/18.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var eventView: UIView!   
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    private let list = [
    [ "title" : "유년기오구의 쪼꼬만 일상", "author" : "문랩", "image" : "image01.png" ],
    [ "title" : "콩글리시 이즈 꿀잼2", "author" : "노페이퍼", "image" : "image02.png" ],
    [ "title" : "진짜 찐?", "author" : "mohe", "image" : "image03.png" ],
    [ "title" : "바다 갈매기 매봉이는 여유로워", "author" : "이우산", "image" : "image04.png" ],
    [ "title" : "공하 3 (공주하이)", "author" : "봉이봉봉봉", "image" : "image05.png" ],
    [ "title" : "무새무새의 몸짓들", "author" : "SO", "image" : "image06.png" ],
    [ "title" : "열심히 산다 빠릿빠릿 곰", "author" : "HIPUP PLANET", "image" : "image07.png" ],
    [ "title" : "반전! 주접콘", "author" : "잼잼", "image" : "image08.png" ],
    [ "title" : "3단티콘", "author" : "나그", "image" : "image09.png" ],
    [ "title" : "넌 나의 비타민~", "author" : "무릎이 임선경", "image" : "image10.png" ],
    [ "title" : "하찮은 외계인 밍찡", "author" : "라밍", "image" : "image11.png" ],
    [ "title" : "안녕! 아기 보노보노", "author" : "보노보노", "image" : "image12.png" ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView() {
        
        setEvent()
        
    }
    
    func setEvent() {
        
        setEventSize()
        setEventImag(name: "basket.png")
        setEventLabel()
        setEventBackground(name: "pattern.png")
        
    }

    func setEventSize() {
        
        let deviceSize = UIScreen.main.bounds.size
        let topMargin : CGFloat = UIApplication.shared.statusBarFrame.height
        let margin : CGFloat = 20
        eventView.frame = CGRect(x: margin, y: topMargin+margin, width: deviceSize.width-2*margin, height: 200)
    }

    func setEventImag(name: String) {
        
        if let image = UIImage(named: name) {
            eventImage.image = image
            let imageMargin : CGFloat = 10
            let imageSize : CGFloat = 180
            eventImage.frame = CGRect(x: eventImage.superview!.frame.width-imageSize-imageMargin, y: imageMargin, width: imageSize, height: imageSize)
        }
    }
    
    func setEventLabel() {
        
        let eventText = "친구 추가하면\n겨울맞이\n이모티콘 선물!"
        eventLabel.text = eventText
        eventLabel.numberOfLines = 0
        eventLabel.lineBreakMode = .byWordWrapping
        
    }

    func setEventBackground(name: String) {
        
        if let background = UIImage(named: name) {
            eventView.backgroundColor = UIColor(patternImage: background)
        }
        
    }
    
}
