//
//  ViewController.swift
//  interval timer
//
//  Created by Jason Chow on 2/21/19.
//  Copyright © 2019 Jason Chow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var intervalSheet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var newIntervalName: UITextField?
    var newIntervalTime: UITextField?

    @IBAction func addInterval(_ sender: Any) {
        createAlert(title: "Alert")
    }
    
    func createAlert(title:String){
        let alert = UIAlertController(title: "Create Interval", message: "", preferredStyle: .alert)
    
        alert.addAction(UIAlertAction(title: "Accept", style: .default, handler: { action in switch action.style{
        case .default:
            print("Accept was pressed")
            
        case .cancel:
            print("cancel")
            
        case .destructive:
            print("destructive")
            }}))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { action in switch action.style{
        case .default:
            print("Cancel was pressed")
            
        case .cancel:
            print("cancel")
            
        case .destructive:
            print("destructive")
            }}))
        
        alert.addTextField(configurationHandler: newIntervalName)
        alert.addTextField(configurationHandler: newIntervalTime)
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
 
    func newIntervalName(textField: UITextField!){
        newIntervalName = textField
        newIntervalName?.placeholder = "Enter Interval Name"
    }
    func newIntervalTime(textField: UITextField!){
        newIntervalTime = textField
        newIntervalTime?.placeholder = "Enter Interval Time in seconds"
    }

}

