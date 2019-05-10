//
//  ShoppingListController.swift
//  ShoppingList
//
//  Created by Lo Howard on 5/10/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import Foundation
import CoreData

class ShoppingListController {
    let fetchedResultsController: NSFetchedResultsController<ShoppingList>
        
        init() {
        let request: NSFetchRequest<ShoppingList> = ShoppingList.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(key: "isBought", ascending: false)]
        let resultsController: NSFetchedResultsController<ShoppingList> = NSFetchedResultsController(fetchRequest: request, managedObjectContext: CoreDataStack.context, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultsController = resultsController
            
            do {
                try fetchedResultsController.performFetch()
            } catch {
                print(error)
            }
    }
}
