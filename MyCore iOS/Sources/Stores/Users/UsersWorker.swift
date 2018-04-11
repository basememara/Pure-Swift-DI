//
//  UsersWorker.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

public struct UsersWorker: UsersWorkerType {
    private let store: UsersStore
    private let cacheStore: UsersStore
    
    public init(store: UsersStore, cacheStore: UsersStore) {
        self.store = store
        self.cacheStore = cacheStore
    }
}

public extension UsersWorker {
    
    func fetchCurrent(completion: @escaping () -> Void) {
        cacheStore.fetchCurrent {
            //if not existant or out of date then..
            self.store.fetchCurrent(completion: completion)
        }
    }
}
