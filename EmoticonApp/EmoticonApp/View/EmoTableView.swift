//
//  EmoTableView.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/19.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class EmoTableView : UITableView {
    
    let emoticonSample = Emoticon.makeSample()
    
}

extension EmoTableView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoticonSample.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.dequeueReusableCell(withIdentifier: "EmoTableViewCell", for: indexPath) as! EmoTableViewCell
        cell.emoTitleLabel.text = emoticonSample[indexPath.row].title
        cell.emoAuthorLabel.text = emoticonSample[indexPath.row].author
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
