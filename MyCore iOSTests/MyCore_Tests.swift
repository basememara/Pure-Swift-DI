//
//  MyCore_iOSTests.swift
//  MyCore iOSTests
//
//  Created by Basem Emara on 2018-04-11.
//

import XCTest
@testable import MyCore

class MyCore_Tests: XCTestCase, HasDependencies {
    
    private lazy var authenticationWorker: AuthenticationWorkerType = dependencies.resolveWorker()
    private lazy var usersWorker: UsersWorkerType = dependencies.resolveWorker()
    
    override func setUp() {
        super.setUp()
        
        // Use test dependency or even a scoped one to the test!
        DependencyInjector.dependencies = ScopedDependency()
    }
    
    override func tearDown() {
        super.tearDown()
        
        // Set dependencies back to what it was
        DependencyInjector.dependencies = TestDependency()
    }
    
    private class ScopedDependency: TestDependency {
        
        override func resolveService() -> HTTPServiceType {
            return MockHTTPService()
        }
    }
    
    private struct MockHTTPService: HTTPServiceType {
        
        public func post(url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping () -> Void) {
            //Blah, blah
            print("MockHTTPService.post")
        }
        
        public func get(url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping () -> Void) {
            //Blah, blah
            print("MockHTTPService.get")
        }
    }
}

extension MyCore_Tests {
    
    func testAuthenticationExample() {
        authenticationWorker.signup(with: "whatever") {
            XCTAssertTrue(true)
        }
    }
    
    func testUserExample() {
        usersWorker.fetchCurrent {
            XCTAssertTrue(true)
        }
    }
    
}
