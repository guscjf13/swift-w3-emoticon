//
//  SQLite.swift
//  EmoticonApp
//
//  Created by herb.salt on 2021/01/20.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import SQLite3
import Foundation

class SQLite {

    var db: OpaquePointer? = nil
    
    func openDB() -> Bool {
        
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("CartDatabase.sqlite")
        if sqlite3_open(fileURL.path, &db) == SQLITE_OK {
            return true
        }
        else {
            return false
        }
        
    }
    
    func createTable() -> Bool{
        
        let createTableQuery = """
        create table if not exists Cart(
        ID integer primary key autoincrement,
        TITLE text,
        AUTHOR text,
        IMAGE text,
        DATE text
        )
        """
        if sqlite3_exec(db, createTableQuery, nil, nil, nil) == SQLITE_OK {
            return true
        }
        return false
        
    }
    
    func addCartItem(cartItem: CartItem) -> Bool {
        
        let insertQuery = "insert into Cart (TITLE, AUTHOR, IMAGE, DATE) values (?,?,?,?)"
        var insertStatement: OpaquePointer? = nil
        if sqlite3_prepare(db, insertQuery, -1, &insertStatement, nil) == SQLITE_OK {
            
            sqlite3_bind_text(insertStatement, 1, (cartItem.emoticon.title as NSString).utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 2, (cartItem.emoticon.author as NSString).utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 3, (cartItem.emoticon.image as NSString).utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 4, (cartItem.date as NSString).utf8String, -1, nil)
            if sqlite3_step(insertStatement) == SQLITE_DONE {
                return true
            }
            
        }
        return false
        
    }
    
    func getAllCartItems() -> [CartItem] {
        
        var cartItemList = [CartItem]()
        let selectQuery = "select * from Cart"
        var selectStatement: OpaquePointer? = nil
        if sqlite3_prepare(db, selectQuery, -1, &selectStatement, nil) == SQLITE_OK {
            
            while(sqlite3_step(selectStatement) == SQLITE_ROW) {
                let id = Int(sqlite3_column_int(selectStatement, 0)) 
                let title = String(cString: sqlite3_column_text(selectStatement, 1))
                let author = String(cString: sqlite3_column_text(selectStatement, 2))
                let image = String(cString: sqlite3_column_text(selectStatement, 3))
                let date = String(cString: sqlite3_column_text(selectStatement, 4))
                cartItemList.append(CartItem(id: id, emoticon: Emoticon(title: title, author: author, image: image), date: date))
            }
            
        }
        
        return cartItemList
        
    }
    
    func deleteAllCartItems() -> Bool {
        
        let deleteAllQuery = "delete from Cart"
        if sqlite3_exec(db, deleteAllQuery, nil, nil, nil) == SQLITE_OK {
            return true
        }
        return false
        
    }
    
    func deleteCartItem(cartItem: CartItem) -> Bool {
        
        let deleteAllQuery = "delete from Cart where id = \(cartItem.id)"
        if sqlite3_exec(db, deleteAllQuery, nil, nil, nil) == SQLITE_OK {
            return true
        }
        return false
        
    }
    
    func deleteTable() -> Bool{
        
        let deleteTableQuery = "drop table Cart"
        if sqlite3_exec(db, deleteTableQuery, nil, nil, nil) == SQLITE_OK {
            return true
        }
        return false
        
    }
    
    func closeDB() {
        sqlite3_close(db)
    }
    
}
