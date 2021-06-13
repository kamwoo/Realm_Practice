//
//  MyModel.swift
//  Realm_Practice
//
//  Created by wooyeong kam on 2021/06/13.
//

import Foundation
import RealmSwift

class Animal : Object {
    @objc dynamic var name : String = ""
    @objc dynamic var age : Int = 0
    
}
