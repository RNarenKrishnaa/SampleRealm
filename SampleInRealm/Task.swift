//
//  Task.swift
//  SampleInRealm
//
//  Created by naren on 8/31/17.
//  Copyright © 2017 naren. All rights reserved.
//

import Foundation
import RealmSwift

class Task : Object{
    
    dynamic var name : String = ""
    dynamic var createdAt : String = ""
    dynamic var taskDescription : String = ""
    
    
}
