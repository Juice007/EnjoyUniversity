//
//  CommunityAuthority.swift
//  EnjoyUniversity
//
//  Created by lip on 17/4/15.
//  Copyright © 2017年 lip. All rights reserved.
//

import Foundation

class CommunityAuthority:NSObject{
    
    /// 社团 ID
    var cmid:Int = 0
    
    /// 职位 -3表示提交申请，－2表示进行笔试，－1表示进行面试，1表示成员，2表示管理员
    var position:Int = 0
    
    /// 申请加入理由／拒绝理由
    var reason:String?
    
    /// 社团名称
    var cmname:String?
    
    /// 最大的表示上一次打开的
    var lastselect:Int = 0
    
    
}