//
//  DataStruct.swift
//  cookinglearning (iOS)
//
//  Created by Little Weak_duck on 2022/4/25.
//

import Foundation
import SwiftyJSON

struct userInfo: Codable, Hashable {
    var nickname:String
    var avatar:String
    var birthday:Int
    var gender:Int
    init()  {
        nickname = "nonickname"
        avatar = "noavatar"
        birthday = 0
        gender = 0
    }
}

//json 改写
struct stepInfo: Codable, Hashable {
    var content: String
    var order: Int
    var second: Int
    init() {
        content = "草泥马没有"
        order = 0
        second = 0
    }
}

//没写完
struct courseInfo: Codable {
    var detail: String
    var image: String
    var name: String
    var step: stepInfo
    var tags: JSON
}

var user=userInfo()
