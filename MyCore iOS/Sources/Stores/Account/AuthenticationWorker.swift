//
//  AuthenticationWorker.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

public struct AuthenticationWorker: AuthenticationWorkerType {
    private let service: AuthenticationService
    
    public init(service: AuthenticationService) {
        self.service = service
    }
}

public extension AuthenticationWorker {
    
    var isAuthorized: Bool {
        return service.isAuthorized
    }
    
    func signup(with request: Any, completion: @escaping () -> Void) {
        service.signup(with: request, completion: completion)
    }
    
    func login(with request: Any, completion: @escaping () -> Void) {
        service.login(with: request, completion: completion)
    }
    
    func logout() {
        service.logout()
    }
}
