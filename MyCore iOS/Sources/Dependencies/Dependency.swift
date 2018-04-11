//
//  Dependency.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

public protocol Dependency {
    func resolveService() -> HTTPServiceType
    
    func resolveWorker() -> AuthenticationWorkerType
    func resolveService() -> AuthenticationService
    
    func resolveWorker() -> UsersWorkerType
    func resolveStore() -> UsersStore
    func resolveCache()e -> UsersStore
}
