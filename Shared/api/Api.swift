//
// Created by orangeboy Chen on 2022/4/21.
//

import Foundation
import Alamofire
import SwiftUI
class Api {
    static let BASE_URL = "http://localhost:8080"
    static let Token=UserDefaults.standard.string(forKey: "token") ?? "艸，没有"
    static let headers: HTTPHeaders=[
        "Authorization":Token
    ]
    
    static func login(identityToken: String) -> DataRequest {
        AF.request("\(BASE_URL)/login", method: .post, parameters: ["identityToken": identityToken], encoder: JSONParameterEncoder.default)
    }

    static func getListType()->DataRequest{
        AF.request("\(BASE_URL)/tag/type/list", method: .get, headers: headers)
    }
    
}
