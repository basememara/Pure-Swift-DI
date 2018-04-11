//
//  TestDependency.swift
//  MyCore iOSTests
//
//  Created by Basem Emara on 2018-04-11.
//

import MyCore

class TestDependency: CoreDependency {
    
    // Override with mocks, spy, or whatever
    
    override func resolveService() -> AuthenticationService {
        return AuthenticationTestService()
    }
}

struct AuthenticationTestService: AuthenticationService {
    var isAuthorized: Bool {
        return true
    }
    
    func signup(with request: Any, completion: @escaping () -> Void) {
        print("AuthenticationTestService.signup")
    }
    
    func login(with request: Any, completion: @escaping () -> Void) {
        print("AuthenticationTestService.login")
    }
    
    func logout() {
        
    }
}
