//
// Created by orangeboy Chen on 2022/4/21.
//

import Foundation
import Alamofire
import SwiftUI
import SwiftyJSON

class Api {
    static let BASE_URL = "http://localhost:8080"
    static let Token=UserDefaults.standard.string(forKey: "token") ?? "艸，没有"
    static let headers: HTTPHeaders=[
        "Authorization":Token
    ]
    
    
    static func login(identityToken: String) -> DataRequest {
        AF.request("\(BASE_URL)/login", method: .post, parameters: ["identityToken": identityToken], encoder: JSONParameterEncoder.default)
    }
    
    static func getUserInfo()->DataRequest{
        AF.request("\(BASE_URL)/user",method: .get,headers: headers)
    }

    static func getListType()->DataRequest{
        AF.request("\(BASE_URL)/tag/type/list", method: .get, headers: headers)
    }
    
    static func getUserInfo() -> DataRequest{
        AF.request("\(BASE_URL)/user")
    }
    
    static func updateUserInfo(birthday:String,gender:Int,nickName:String)->DataRequest{
        
        let userInfo:JSON=["birthday":Int(birthday) ?? 0,"gender":gender,"nickName":nickName]
         print(userInfo)
        return AF.request("\(BASE_URL)/user/info",method: .put, parameters:userInfo,encoder: JSONParameterEncoder.default, headers: headers)
    }
    
    static func uploadUserAvatar(userAvatarURL:URL)->DataRequest{
        AF.upload(userAvatarURL, to: "\(BASE_URL)/user/avatar",method: .put,headers: headers)
    }
    
}
