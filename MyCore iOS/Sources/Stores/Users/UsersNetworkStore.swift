//
//  UsersNetworkStore.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

public struct UsersNetworkStore: UsersStore {
    private let httpService: HTTPServiceType
    
    public init(httpService: HTTPServiceType) {
        self.httpService = httpService
    }
}

public extension UsersNetworkStore {
    
    func fetchCurrent(completion: @escaping () -> Void) {
        httpService.get(url: "", parameters: [:], headers: [:]) {
            completion()
        }
    }
}
