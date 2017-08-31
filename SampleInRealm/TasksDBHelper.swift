//
//  TasksDBHelper.swift
//  SampleInRealm
//
//  Created by naren on 8/31/17.
//  Copyright © 2017 naren. All rights reserved.
//

import Foundation
import RealmSwift

class TasksDBHelper {
    
    
    func getAllTasks() -> Results<Task> {
        let task = try! Realm().objects(Task.self)
        print(task.count)
        return task
    }
    
    
    func saveTasksToDB(taskName : String, createdAt : String, description : String)  {
        
        let realm = try! Realm()
        try! realm.write{
            let saveTasks = Task()
            saveTasks.name = taskName
            saveTasks.createdAt = createdAt
            saveTasks.taskDescription = description
            realm.add(saveTasks)
        }
        
    }
    
    
    
}
