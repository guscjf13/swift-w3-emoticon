//
//  CartViewController.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/20.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class CartViewController: UITableViewController {
    
    @IBOutlet var cartItemTableView: UITableView!
    @IBOutlet weak var clearButton: UIBarButtonItem!
    var db : SQLite = SQLite()
    var cartItem = [CartItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDB()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        db.closeDB()
    }
    
    func initDB() {
        db.openDB()
        cartItem = db.getAllCartItems()
        cartItemTableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItem.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = cartItemTableView.dequeueReusableCell(withIdentifier: "CartItemViewCell", for: indexPath) as! CartItemViewCell
        cell.emoTitleLabel.text = cartItem[indexPath.row].emoticon.title
        cell.dateLabel.text = cartItem[indexPath.row].date
        
        return cell
        
    }
    
    @IBAction func clearButtonTouched(_ sender: UIBarButtonItem) {
        
        if(db.deleteAllCartItems()) {
            cartItem.removeAll()
            cartItemTableView.reloadData()
        }
        
    }
    
}
