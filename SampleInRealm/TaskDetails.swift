//
//  TaskDetails.swift
//  SampleInRealm
//
//  Created by naren on 8/31/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit

class TaskDetails: UIViewController {

    @IBOutlet weak var txtFieldTaskName: UITextField!
   
    @IBOutlet weak var txtFieldDescriptionName: UITextField!
    
    @IBOutlet weak var lblTaskName: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    @IBOutlet weak var lblCurrentDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let result = dateFormatter.string(from: date)
        lblCurrentDate.text = result
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func saveTasksToDb()  {
        let saveTask = TasksDBHelper()
        saveTask.saveTasksToDB(taskName: txtFieldTaskName.text!, createdAt: lblCurrentDate.text!, description: txtFieldTaskName.text!)
    }
    
    @IBAction func btnSaveFunc(_ sender: Any) {
    
        if (txtFieldTaskName.text?.isEmpty)!{
            let alert = UIAlertController(title: "Task Name cannot be empty", message: "", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
        }else if (txtFieldDescriptionName.text?.isEmpty)!{
            let alert = UIAlertController(title: "Description cannot be empty", message: "", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
        }else{
        
        saveTasksToDb()
        dismiss(animated: true, completion: nil)
        
        }
    }

    @IBAction func btnCancel(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    
    }
   
    @IBAction func btnBack(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

}
