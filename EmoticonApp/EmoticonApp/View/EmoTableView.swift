//
//  EmoTableView.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/19.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class EmoTableView : UITableView {
    
    var emoticonData : [Emoticon] = [Emoticon]()
    
    func initData(emoticons: [Emoticon]) {
        emoticonData = emoticons
    }
    func addData(emoticons: [Emoticon]) {
        for emoticon in emoticons {
            emoticonData.append(emoticon)
        }
    }
    
}

extension EmoTableView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoticonData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.dequeueReusableCell(withIdentifier: "EmoTableViewCell", for: indexPath) as! EmoTableViewCell
        cell.emoImageView.image = UIImage(named: emoticonData[indexPath.row].image)
        cell.emoTitleLabel.text = emoticonData[indexPath.row].title
        cell.emoAuthorLabel.text = emoticonData[indexPath.row].author
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
