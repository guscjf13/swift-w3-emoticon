//
//  Emoticon.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/19.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import Foundation

class Emoticon {
    
    var title : String
    var author : String
    var image : String
    
    init(title: String, author: String, image: String) {
        self.title = title
        self.author = author
        self.image = image
    }
    
    static func makeSample() -> [Emoticon] {
        
        let list = [
        Emoticon(title: "유년기오구의 쪼꼬만 일상", author: "문랩", image: "image01.png"),
        Emoticon(title: "콩글리시 이즈 꿀잼2", author: "노페이퍼", image: "image02.png"),
        Emoticon(title: "진짜 찐?", author: "mohe", image: "image03.png"),
        Emoticon(title: "바다 갈매기 매봉이는 여유로워", author: "이우산", image: "image04.png"),
        Emoticon(title: "공하 3 (공주하이)", author: "봉이봉봉봉", image: "image05.png"),
        Emoticon(title: "무새무새의 몸짓들", author: "SO", image: "image06.png"),
        Emoticon(title: "열심히 산다 빠릿빠릿 곰", author: "HIPUP PLANET", image: "image07.png"),
        Emoticon(title: "반전! 주접콘", author: "잼잼", image: "image08.png"),
        Emoticon(title: "3단티콘", author: "나그", image: "image09.png"),
        Emoticon(title: "넌 나의 비타민~", author: "무릎이 임선경", image: "image10.png"),
        Emoticon(title: "하찮은 외계인 밍찡", author: "라밍", image: "image11.png"),
        Emoticon(title: "안녕! 아기 보노보노", author: "보노보노", image: "image12.png"),
        ]
        
        return list
        
    }
    
}
