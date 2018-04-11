//
//  CoreDependency.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

open class CoreDependency: Dependency {
    
    public init() { }
    
    open func resolveService() -> HTTPServiceType {
        return HTTPService()
    }
    
    open func resolveWorker() -> AuthenticationWorkerType {
        return AuthenticationWorker(
            service: resolveService()
        )
    }
    
    open func resolveService() -> AuthenticationService {
        return AuthenticationNetworkService(
            httpService: resolveService()
        )
    }
    
    open func resolveWorker() -> UsersWorkerType {
        return UsersWorker(
            store: resolveStore(),
            cacheStore: resolveCache()
        )
    }
    
    open func resolveStore() -> UsersStore {
        return UsersNetworkStore(
            httpService: resolveService()
        )
    }
    
    open func resolveCache() -> UsersStore {
        return UsersCoreDataStore() //..or use UsersRealmStore
    }
}
