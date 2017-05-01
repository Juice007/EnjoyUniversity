//
//  SQLiteManager.swift
//  EnjoyUniversity
//
//  Created by lip on 17/5/1.
//  Copyright © 2017年 lip. All rights reserved.
//

class SQLiteManager: NSObject {
    //MARK: - 创建类的静态实例变量即为单例对象 let-是线程安全的
    static let instance = SQLiteManager()
    //对外提供创建单例对象的接口
    class func shareInstance() -> SQLiteManager {
        return instance
    }
    //MARK: - 数据库操作
    // 定义数据库变量
    var db : OpaquePointer? = nil
    // 打开数据库
    func openDB() -> Bool {
        //数据库文件路径
        let dicumentPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last
        let DBPath = (dicumentPath! as NSString).appendingPathComponent("euDB.sqlite")
        let cDBPath = DBPath.cString(using: String.Encoding.utf8)
        //打开数据库
        //第一个参数:数据库文件路径  第二个参数:数据库对象
        if sqlite3_open(cDBPath, &db) != SQLITE_OK {
            print("数据库打开失败")
        }
        return creatTable()
    }
    // 创建表
    func creatTable() -> Bool {
        //建表的SQL语句
        let creatUserTable = "CREATE TABLE IF NOT EXISTS 'nf_Activity' ( 'receiveTime' TEXT,'receiveMsg' Text);"
        let creatCarTable = "CREATE TABLE IF NOT EXISTS 'nf_Community' ( 'receiveTime' TEXT,'receiveMsg' Text);"
        //执行SQL语句-创建表 依然,项目中一般不会只有一个表
        return creatTableExecSQL(SQL_ARR: [creatUserTable,creatCarTable])
    }
    // 执行建表SQL语句
    func creatTableExecSQL(SQL_ARR : [String]) -> Bool {
        for item in SQL_ARR {
            if execSQL(SQL: item) == false {
                return false
            }
        }
        return true
    }
    // 执行SQL语句
    func execSQL(SQL : String) -> Bool {
        // 1.将sql语句转成c语言字符串
        let cSQL = SQL.cString(using: String.Encoding.utf8)
        //错误信息
        let errmsg : UnsafeMutablePointer<UnsafeMutablePointer<Int8>?>? = nil
        if sqlite3_exec(db, cSQL, nil, nil, errmsg) == SQLITE_OK {
            return true
        }else{
            print("SQL 语句执行出错 -> 错误信息: 一般是SQL语句写错了 \(errmsg)")
            return false
        }
    }
    
    //
}
