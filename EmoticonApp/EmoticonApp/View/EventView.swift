//
//  EventView.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/19.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class EventView: UIView {
    
    let eventImage : UIImageView = UIImageView()
    let eventLabel : UILabel = UILabel()
    let eventDescriptionLabel : UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setEvent()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setEvent() {
        
        setEventBackground(name: "pattern.png")
        setEventLabel()
        setEventDescriptionLabel()
        setEventImage(name: "basket.png")
        
    }

    func setEventBackground(name: String) {
        
        if let background = UIImage(named: name) {
            self.backgroundColor = UIColor(patternImage: background)
        }
        
    }
    
    func setEventLabel() {
        
        let eventText = "이벤트"
        eventLabel.text = eventText
        eventLabel.textColor = .blue
        eventLabel.frame = CGRect(x: 10, y: 10, width: 100, height: 30)
        self.addSubview(eventLabel)
        
    }
    
    func setEventDescriptionLabel() {
        
        let eventDescriptionText = "친구 추가하면\n겨울맞이\n이모티콘 선물!"
        eventDescriptionLabel.text = eventDescriptionText
        eventDescriptionLabel.numberOfLines = 0
        eventDescriptionLabel.lineBreakMode = .byWordWrapping
        eventDescriptionLabel.frame = CGRect(x: 10, y: 50, width: 500, height: 100)
        self.addSubview(eventDescriptionLabel)
        
    }

    func setEventImage(name: String) {
        
        if let image = UIImage(named: name) {
            eventImage.image = image
            let imageMargin : CGFloat = 10
            let imageSize : CGFloat = 180
            eventImage.frame = CGRect(x: self.frame.width-imageSize-imageMargin, y: imageMargin, width: imageSize, height: imageSize)
            self.addSubview(eventImage)
        }
    }

}
