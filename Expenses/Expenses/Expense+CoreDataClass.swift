//
//  Expense+CoreDataClass.swift
//  Expenses
//
//  Created by Julia Wopata on 4/19/19.
//  Copyright © 2019 Tech Innovator. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Expense)
public class Expense: NSManagedObject {
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSData?
        }
    }

    convenience init(name: String?, amount: Double, date: Date?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate

        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }

        self.init(entity: Expense.entity(), insertInto: managedContext)

        self.name = name
        self.amount = String(amount)
        self.date = date
    }
}
