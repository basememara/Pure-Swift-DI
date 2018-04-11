//
//  UsersStoreInterfaces.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

public protocol UsersStore {
    func fetchCurrent(completion: @escaping () -> Void)
}

public protocol UsersWorkerType: UsersStore {
    
}
