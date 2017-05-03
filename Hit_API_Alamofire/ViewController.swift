//
//  ViewController.swift
//  Hit_API_Alamofire
//
//  Created by Leo on 10/10/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         Alamofire.request("http://api.androidhive.info/contacts/").responseData { (resData) -> Void in
         print(resData.result.value!)
         let strOutput = String(data : resData.result.value!, encoding : String.Encoding.utf8)
         print(strOutput)
         }
         
         */
        /*
         Alamofire.request("http://shagunn.info/cherishws/webservices/homepage?key=28c15c0b405c1f7a107133edf5504367").responseData { (resData) -> Void in
         print(resData.result.value!)
         let strOutput = String(data : resData.result.value!, encoding : String.Encoding.utf8)
         print(strOutput)
         }
         */
        
        
        /*
         Alamofire.request("http://shagunn.info/cherishws/webservices/homepage?key=28c15c0b405c1f7a107133edf5504367", method: .get, parameters: nil, headers: nil).responseJSON { response in
         print(response.request)  // original URL request
         print(response.response) // HTTP URL response
         print(response.data)     // server data
         print(response.result)   // result of response serialization
         
         if let JSON = response.result.value {
         print("JSON: \(JSON)")
         }
         }
         
         */
        
        Alamofire.request("http://shagunn.info/cherishws/mobileapi/login", method: .post, parameters: ["email_id":"usa1@mailinator.com", "password":"Philippe1"], headers: nil)
            
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // HTTP URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let jsonResult = response.result.value as? Dictionary<String, AnyObject> {
                    // do whatever with jsonResult
                    print("\(jsonResult)")
                    print("\(jsonResult["auth_token"])")
                }
                else
                {
                    print("")
                }
                
                //                if let JSON = response.result.value {
                //                    print("JSON: \(JSON)")
                //
                //
                //                }
        }
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

