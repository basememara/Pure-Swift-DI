//
//  AuthenticationStoreInterfaces.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

public protocol AuthenticationService {
    var isAuthorized: Bool { get }
    func signup(with request: Any, completion: @escaping () -> Void)
    func login(with request: Any, completion: @escaping () -> Void)
    func logout()
}

public protocol AuthenticationWorkerType: AuthenticationService {
    
}
