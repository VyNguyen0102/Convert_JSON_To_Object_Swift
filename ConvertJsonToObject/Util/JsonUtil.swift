//
//  JsonUtil.swift
//  ConvertJsonToObject
//
//  Created by Vy Nguyen on 4/6/17.
//  Copyright © 2017 VVLab. All rights reserved.
//

import Foundation

class JsonUtil: NSObject {
    
    static func parseJSON(data : Data) -> [String: Any]{
        let json = try? JSONSerialization.jsonObject(with: data, options: [])
        return json as! [String : Any]
    }
    
    static func convertToListDictionary(text: String) -> [Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    static func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}
