//
// Created by orangeboy Chen on 2022/4/21.
//

import Foundation
import Alamofire
import SwiftUI
import SwiftyJSON


class Api {
    static let BASE_URL = "http://localhost:8080"//"http://172.20.10.2:8080"
    static let Token=UserDefaults.standard.string(forKey: "token") ?? "艸，没有"
    static let headers: HTTPHeaders=[
        "Authorization":Token
    ]
    
    
    static func login(identityToken: String) -> DataRequest {
        AF.request("\(BASE_URL)/login", method: .post, parameters: ["identityToken": identityToken], encoder: JSONParameterEncoder.default)
    }
    
    static func getUserInfo()->userInfo{
        var userIn = userInfo()
        AF.request("\(BASE_URL)/user",method: .get,headers: headers).responseString{response in
            let json = JSON(parseJSON: response.value ?? "")
            if json["code"].intValue == 200 {
                let data = json["data"]
                let nickname = data["nickname"].stringValue
                let birthday = data["birthday"].intValue
                let avatar = data["avatar"].stringValue
                
                userIn.birthday = birthday
                userIn.nickname = nickname
                userIn.avatar = avatar
                print(userIn)
            }
        }
        print(userIn)
        return userIn
        
    }
    
    static func getTagList() -> DataRequest{
        AF.request("\(BASE_URL)/tag/type/list", method: .get, headers: headers)
    }
    
    static func getTagTypeList(tagTypeId: Int) -> DataRequest{
        AF.request("\(BASE_URL)/tag/type/\(tagTypeId)", method: .get, headers: headers)
    }
    static func updateUserInfo(birthday:String,gender:Int,nickName:String)->DataRequest{
        
        let userInfo:JSON=["birthday":Int(birthday) ?? 0,"gender":gender,"nickName":nickName]
        print(userInfo)
        return AF.request("c/user/info",method: .put, parameters:userInfo,encoder: JSONParameterEncoder.default, headers: headers)
    }
    
    static func uploadUserAvatar(userAvatarURL:URL) -> DataRequest{
        AF.upload(userAvatarURL, to: "\(BASE_URL)/user/avatar",method: .put,headers: headers)
    }
    
    static func deleteCourse(courseId:Int) -> DataRequest{
        AF.request("\(BASE_URL)/course/\(courseId)",method: .delete,headers:headers)
    }
    
    static func renewCourse(courseId:Int, courseInfo:courseInfo) -> DataRequest{
        AF.request("\(BASE_URL)/course/\(courseId)",method : .put,parameters:courseInfo,encoder:JSONParameterEncoder.default, headers: headers)
    }
    
    static func getCourseDetails(courseId:Int) -> DataRequest{
        AF.request("\(BASE_URL)/course/\(courseId)",method: .get,headers:headers)
    }
    
    static func searchCourse(keyWords:String, pageNum:Int, pageSize:Int) -> DataRequest{
        AF.request("\(BASE_URL)/course/search?keyword=\(keyWords)&pageNum=\(pageNum)&pageSize=\(pageSize)",method: .get,headers:headers)
    }
    
    static func getRecommend()-> DataRequest{
        AF.request("\(BASE_URL)/course/recommend",method: .get,headers:headers)
    }
    
    static func findCourse(tag:Int, keyword:String, pageNum:Int, pageSize:Int) -> DataRequest{
        AF.request("\(BASE_URL)/course/query?by=\(tag)&keyword=\(keyword)&pageNum=\(pageNum)&pageSize=\(pageSize)",method: .get,headers:headers)
    }
}




