//
//  Document+CoreDataClass.swift
//  Documents
//
//  Created by Kartik Sharma on 9/19/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Document)
public class Document: NSManagedObject {
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSDate?
        }
    }
    convenience init(name: String?, content: String?, size: Double, date: Date?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
     //       return nil
        }
        self.init(entity: Document.entity, insertInto: managedContext)
        
        self.name = name
        self.content = content
        self.date = date
        self.size = size
}
}
