//
//  emoticonTableView.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/19.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class EmoticonTableView: UITableView {
    
    var sampleEmoticon : [Emoticon] = Emoticon.makeSample()
    
}

extension EmoticonTableView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleEmoticon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: "EmoticonTableCellView", for: indexPath) as! EmoticonTableCellView
        cell.emoticonTitleLabel.text = "test"
        return cell
    }
    
}
