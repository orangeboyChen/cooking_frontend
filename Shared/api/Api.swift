//
// Created by orangeboy Chen on 2022/4/21.
//

import Foundation
import Alamofire
class Api {
    static let BASE_URL = "http://localhost:8080"

    static func login(identityToken: String) -> DataRequest {
        Alamofire.request("/login", method: .post)
    }
}
