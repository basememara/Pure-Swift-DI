//
//  HTTPService.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

//Hide 3rd party or complex network logic
//For example, do not let Alamofire leak
//to the rest of your app!
//import Alamofire

public protocol HTTPServiceType {
    func post(url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping () -> Void)
    func get(url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping () -> Void)
}

public struct HTTPService: HTTPServiceType {
    
    public func post(url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping () -> Void) {
        //Implementation logic goes here
        print("HTTPServiceType.post")
    }
    
    public func get(url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping () -> Void) {
        //Implementation logic goes here
        print("HTTPServiceType.post")
    }
}
