//
//  AuthenticationNetworkService.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

// TODO: Implement real logic

public struct AuthenticationNetworkService: AuthenticationService {
    private let httpService: HTTPServiceType
    
    public init(httpService: HTTPServiceType) {
        self.httpService = httpService
    }
}

public extension AuthenticationNetworkService {
    
    var isAuthorized: Bool {
        return false
    }
    
    func signup(with request: Any, completion: @escaping () -> Void) {
        print("AuthenticationNetworkService.signup")
        
        httpService.post(url: "", parameters: [:], headers: [:]) {
            completion()
        }
    }
    
    func login(with request: Any, completion: @escaping () -> Void) {
        print("AuthenticationNetworkService.signup")
        
        httpService.post(url: "", parameters: [:], headers: [:]) {
            completion()
        }
    }
    
    func logout() {
        
    }
}
