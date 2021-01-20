//
//  CartItem.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/20.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import Foundation

class CartItem {
    
    var emoticon: Emoticon
    var date: String
    
    init(emoticon: Emoticon) {
        self.emoticon = emoticon
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss"
        self.date = format.string(from: Date())
    }
    
    init(emoticon: Emoticon, date: String) {
        self.emoticon = emoticon
        self.date = date
    }
    
}
