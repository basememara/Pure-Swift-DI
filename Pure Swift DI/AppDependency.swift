//
//  AppDependency.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

// Override dependencies from a framework for exmaple

import MyCore

class AppDependency: CoreDependency {
    
    override func resolveCache() -> UsersStore {
        return UsersRealmStore()
    }
}
