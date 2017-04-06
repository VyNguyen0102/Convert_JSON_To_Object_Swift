//
//  ViewController.swift
//  ConvertJsonToObject
//
//  Created by Vy Nguyen on 4/6/17.
//  Copyright © 2017 VVLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let JSONSampleString = "{ \"list\" : [{ \"property1\" : \"John\",\"property2\"  : \"Doe\", \"property3\"       : 23 }, { \"property1\" : \"Mary\",\"property2\"  : \"Smith\",\"property3\"      : 32 }],\"message\":\"Success\"}"
        
        let data = JSONSampleString.data(using: String.Encoding.utf8)!
    
        let response = JsonUtil.parseJSON(data: data)
        let objResponse = SampleResponseModel.init(json: response)
        print(objResponse?.message ?? "")
        for model in (objResponse?.list)!{
            print(model.property1)
            print(model.property2)
            print(model.property3)
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

