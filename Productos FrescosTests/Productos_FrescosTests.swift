//
//  Productos_FrescosTests.swift
//  Productos FrescosTests
//
//  Created by Desarrollo zc on 9/1/15.
//  Copyright (c) 2015 Inacap. All rights reserved.
//

import UIKit
import XCTest
import Productos_Frescos

class Productos_FrescosTests: XCTestCase {
    
    internal var users=[User]()
    
    override func setUp() {
        super.setUp()
        
        // Inicializamos el Arreglo
        
        users += ([User(id:1, name:"jose pedro", user:"jose", pass:"jose"),User(id:2, name:"juan jose", user:"juan", pass:"juan"),User(id:2, name:"miguel osorio", user:"miguel", pass:"miguel"),User(id:2, name:"pedro pablo", user:"pedro", pass:"pedro"),User(id:2, name:"alexis suazo", user:"alexis", pass:"alexis"),User(id:2, name:"manuel salinas", user:"manuel", pass:"manuel"),User(id:2, name:"rolando agurto", user:"rolando", pass:"rolando"),User(id:2, name:"marcelo salas", user:"marcelo", pass:"marcelo"),User(id:2, name:"javier palma", user:"javier", pass:"javier"),User(id:2, name:"diego castro", user:"diego", pass:"diego")])
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        //XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // ejecutamos el ordenamiento
            self.users.sortInPlace({ $0.name < $1.name })
            // Put the code you want to measure the time of here.
        }
    }
    
}
