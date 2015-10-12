//
//  User.swift
//  Productos Frescos
//
//  Created by Guillermo Castillo on 9/1/15.
//  Copyright (c) 2015 Inacap. All rights reserved.
//

import Foundation
//clase para crear a un usuario
public class User:NSObject{
    
    public var id:Int
    public var name:String
    public var user:String
    public var pass:String
    
    //Inicializamos la clase
    public init(id:Int, name:String, user:String, pass:String){
        self.id = id
        self.name = name
        self.user = user
        self.pass = pass
    }
    
    public convenience override init()
    {
        self.init(id:1, name:"", user:"", pass:"")
    }
    
    //Damos la Forma String a la clase
    override public var description:String{
        return "\(self.name)"
    }
    
    //devolvemnos el valos de id del usuario
    public func getId()->Int{
        return self.id
    }
    
    //devuelve el nombre del usuario
    public func getName()->String{
        return self.name
    }
    
    //devuelve la clave del usuario
    public func getPass()->String{
        return self.pass
    }
    
    //devuelve el username del usuario actual
    public func getuser()->String{
        return self.user
    }
    
    public func validateUser(array:[User], usuario:String, clave:String)->Bool{
        
        //seccion de validacion de usuario
        for user in array {
            
            if user.getuser() == usuario && user.getPass() == clave{
                return true
            }
        }
        
        return false
        
    }
    
    public func searchUserByName(array:[User], nombre:String)->Bool{
        
        //seccion de validacion de usuario
        for user in array {
            
            if user.getName() == nombre{
                return true
            }
        }
        
        return false
        
    }
    
}