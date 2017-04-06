//
//  SampleModelExtension.swift
//  ConvertJsonToObject
//
//  Created by Vy Nguyen on 4/6/17.
//  Copyright © 2017 VVLab. All rights reserved.
//

import Foundation

extension SampleModel {
    init?(json: [String: Any]) {
        guard let property1 = json["property1"] as? String?,
            let property2 = json["property2"] as? String?,
            let property3 = json["property3"] as? Int?
            else {
                return nil
        }
        self.property1 = property1 ?? ""
        self.property2 = property2 ?? ""
        self.property3 = property3 ?? 0
    }
}
