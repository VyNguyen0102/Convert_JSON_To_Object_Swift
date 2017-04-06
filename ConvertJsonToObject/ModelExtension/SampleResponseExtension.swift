//
//  SampleResponseExtension.swift
//  ConvertJsonToObject
//
//  Created by Vy Nguyen on 4/6/17.
//  Copyright © 2017 VVLab. All rights reserved.
//

import Foundation

extension SampleResponseModel {
    init?(json: [String: Any]) {
        guard let message = json["message"] as? String,
            let jsonList = json["list"] as? [Any]
            else {
                return nil
        }
        self.message = message
        self.list = []
        for jsonObject in jsonList {
            let swiftObject = SampleModel.init(json: jsonObject as! [String: Any])
            if(swiftObject != nil){
                self.list.append(swiftObject!)
            }
        }
    }
}
