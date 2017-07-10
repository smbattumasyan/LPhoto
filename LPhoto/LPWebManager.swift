//
//  LPWebManager.swift
//  LPhoto
//
//  Created by Smbat Tumasyan on 10.07.17.
//  Copyright © 2017 Smbat Tumasyan. All rights reserved.
//

import UIKit

class LPWebManager: NSObject {
    
    let kUrl = URL(string: "https://lphoto.restlet.net/v1/users/")
    
    func loginRequest(paramDict:NSDictionary, completionHandler:@escaping (Data?, URLResponse?, Error?) -> Void) {
        
        var request  = URLRequest(url: kUrl!)
        
        let headers = ["host" :"lphoto.restlet.net",
            "accept" :"application/json",
            "content-type" :"application/json",
            "authorization" :"Basic MzQ1MTkyOWYtODM5MS00YzBjLTg2ODEtM2Q5OTcwZjNmZmI5OjFkYWEzZThkLTVhNzAtNDU0YS05NmNiLWYzMjZlMDBjN2ViNQ=="]
        do {
            let postData                = try JSONSerialization.data(withJSONObject: paramDict, options: JSONSerialization.WritingOptions(rawValue: 0))
            request.httpBody            = postData
            request.allHTTPHeaderFields = headers
            request.httpMethod          = "POST"
                URLSession.shared.dataTask(with: request, completionHandler: completionHandler).resume()
        } catch {
            print("error")
        }
    }
    

    func registrationRequest(paramDict:NSDictionary, completionHandler:@escaping (Data?, URLResponse?, Error?) -> Void) {
        
        var request = URLRequest(url: kUrl!)

        let headers = ["host" :"lphoto.restlet.net",
                       "accept" :"application/json",
                       "content-type" :"application/json",
                       "authorization" :"Basic MzQ1MTkyOWYtODM5MS00YzBjLTg2ODEtM2Q5OTcwZjNmZmI5OjFkYWEzZThkLTVhNzAtNDU0YS05NmNiLWYzMjZlMDBjN2ViNQ=="]
        do {
            let postData                = try JSONSerialization.data(withJSONObject: paramDict, options: JSONSerialization.WritingOptions(rawValue: 0))
            request.httpBody            = postData
            request.allHTTPHeaderFields = headers
            request.httpMethod          = "POST"
            URLSession.shared.dataTask(with: request, completionHandler: completionHandler).resume()
        } catch {
            print("error")
        }
    }

}


