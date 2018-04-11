//
//  UsersCoreDataStore.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

public struct UsersCoreDataStore: UsersStore {
    
    public init() {
    
    }
}

public extension UsersCoreDataStore {
    
    func fetchCurrent(completion: @escaping () -> Void) {
        completion()
    }
}
