//
//  Page1OptionViewController.swift
//  ShoppingCartH1
//
//  Created by admin on 8/29/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import FMDB

class Page1OptionViewController: UIViewController {

    var database:FMDatabase!
    
    @IBAction func btnAdd(sender: AnyObject) {
        
    }
    
    func openDB() {
        let documentFolder = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
        let path = documentFolder.stringByAppendingString("")
        print("DB Path \(path)")
        let fileManager = NSFileManager()
        if (!fileManager.fileExistsAtPath(path)) {
            let dbFilePath = NSBundle.mainBundle().pathForResource("data", ofType: "db")!
            do {
                try fileManager.copyItemAtPath(dbFilePath, toPath: path)
            } catch {
                print("Error to open DB")
            }
        }
        self.database = FMDatabase(path: path)
        self.database.open()
    }
    
    func query() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
