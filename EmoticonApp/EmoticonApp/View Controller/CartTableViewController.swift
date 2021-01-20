//
//  CartTableViewController.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/19.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class CartViewController: UITableViewController {

    @IBOutlet weak var cartTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}
