//
//  UsersRealmStore.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

public struct UsersRealmStore: UsersStore {
    
    public init() {
        
    }
}

public extension UsersRealmStore {
    
    func fetchCurrent(completion: @escaping () -> Void) {
        completion()
    }
}
