//
//  Document+CoreDataProperties.swift
//  Documents
//
//  Created by Kartik Sharma on 9/19/19.
//  Copyright © 2019 Dale Musser. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var name: String?
    @NSManaged public var content: String?
    @NSManaged public var size: Double
    @NSManaged public var rawDate: NSDate?

}
