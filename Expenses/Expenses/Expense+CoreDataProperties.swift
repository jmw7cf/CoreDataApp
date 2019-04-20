//
//  Expense+CoreDataProperties.swift
//  Expenses
//
//  Created by Julia Wopata on 4/19/19.
//  Copyright © 2019 Tech Innovator. All rights reserved.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var name: String?
    @NSManaged public var amount: String?
    @NSManaged public var rawDate: NSDate?

}
