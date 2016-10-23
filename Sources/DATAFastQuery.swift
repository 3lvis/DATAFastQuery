import CoreData

public class DATAFastQuery: NSObject {

    /// Querys Core Data in a blazing fast way to retrieve a dictionary of NSManagedObjectIDs as values and a Core Data attribute value as key.
    ///
    /// - parameter entityName:    The name of the entity to be queried.
    /// - parameter attributeName: The Core Data attribute to be used as a key.
    /// - parameter context:       The managed object context.
    ///
    /// - returns: A dictionary where the value is the attribute that you required and the NSManagedObjectID.
    public class func managedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext) -> [AnyHashable: NSManagedObjectID] {
        return self.generateManagedObjectIDs(in: entityName, usingAsKey: attributeName, context: context, predicate: nil, sortDescriptors: nil)
    }

    /// Querys Core Data in a blazing fast way to retrieve a dictionary of NSManagedObjectIDs as values and a Core Data attribute value as key.
    ///
    /// - parameter entityName:    The name of the entity to be queried.
    /// - parameter attributeName: The Core Data attribute to be used as a key.
    /// - parameter context:       The managed object context.
    /// - parameter predicate:     The predicate used to filter the result.
    ///
    /// - returns: A dictionary where the value is the attribute that you required and the NSManagedObjectID.
    public class func managedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate?) -> [AnyHashable: NSManagedObjectID] {
        return self.generateManagedObjectIDs(in: entityName, usingAsKey: attributeName, context: context, predicate: predicate, sortDescriptors: nil)
    }

    /// Querys Core Data in a blazing fast way to retrieve a dictionary of NSManagedObjectIDs as values and a Core Data attribute value as key.
    ///
    /// - parameter entityName:      The name of the entity to be queried.
    /// - parameter attributeName:   The Core Data attribute to be used as a key.
    /// - parameter context:         The managed object context.
    /// - parameter sortDescriptors: The sort descriptors used to filter the result.
    ///
    /// - returns: A dictionary where the value is the attribute that you required and the NSManagedObjectID.
    public class func managedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext, sortDescriptors: [NSSortDescriptor]) -> [AnyHashable: NSManagedObjectID] {
        return self.generateManagedObjectIDs(in: entityName, usingAsKey: attributeName, context: context, predicate: nil, sortDescriptors: nil)
    }


    /// Querys Core Data in a blazing fast way to retrieve a dictionary of NSManagedObjectIDs as values and a Core Data attribute value as key.
    ///
    /// - parameter entityName:      The name of the entity to be queried.
    /// - parameter attributeName:   The Core Data attribute to be used as a key.
    /// - parameter context:         The managed object context.
    /// - parameter predicate:       The predicate used to filter the result.
    /// - parameter sortDescriptors: The sort descriptors used to filter the result.
    ///
    /// - returns: A dictionary where the value is the attribute that you required and the NSManagedObjectID.
    public class func managedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptors: [NSSortDescriptor]) -> [AnyHashable: NSManagedObjectID] {
        return self.generateManagedObjectIDs(in: entityName, usingAsKey: attributeName, context: context, predicate: predicate, sortDescriptors: sortDescriptors)
    }


    /// Querys Core Data in a blazing fast way to retrieve an array of NSManagedObjectIDs.
    ///
    /// - parameter entityName: The name of the entity to be queried.
    /// - parameter context:    The managed object context.
    ///
    /// - returns: An array of NSManagedObjectID.
    public class func managedObjectIDs(in entityName: String, context: NSManagedObjectContext) -> [NSManagedObjectID] {
        return self.generateManagedObjectIDs(in: entityName, context: context, predicate: nil, sortDescriptors: nil)
    }

    /// Querys Core Data in a blazing fast way to retrieve an array of NSManagedObjectIDs.
    ///
    /// - parameter entityName: The name of the entity to be queried.
    /// - parameter context:    The managed object context.
    /// - parameter predicate:  The predicate used to filter the result.
    ///
    /// - returns: An array of NSManagedObjectID.
    public class func managedObjectIDs(in entityName: String, context: NSManagedObjectContext, predicate: NSPredicate) -> [NSManagedObjectID] {
        return self.generateManagedObjectIDs(in: entityName, context: context, predicate: predicate, sortDescriptors: nil)
    }

    /// Querys Core Data in a blazing fast way to retrieve an array of NSManagedObjectIDs.
    ///
    /// - parameter entityName:      The name of the entity to be queried.
    /// - parameter context:         The managed object context.
    /// - parameter sortDescriptors: The sort descriptors used to filter the result.
    ///
    /// - returns: An array of NSManagedObjectID.
    public class func managedObjectIDs(in entityName: String, context: NSManagedObjectContext, sortDescriptors: [NSSortDescriptor]) -> [NSManagedObjectID] {
        return self.generateManagedObjectIDs(in: entityName, context: context, predicate: nil, sortDescriptors: sortDescriptors)
    }

    /// Querys Core Data in a blazing fast way to retrieve an array of NSManagedObjectIDs.
    ///
    /// - parameter entityName:      The name of the entity to be queried.
    /// - parameter context:         The managed object context.
    /// - parameter predicate:  The predicate used to filter the result.
    /// - parameter sortDescriptors: The sort descriptors used to filter the result.
    ///
    /// - returns: An array of NSManagedObjectID.
    public class func managedObjectIDs(in entityName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptors: [NSSortDescriptor]) -> [NSManagedObjectID] {
        return self.generateManagedObjectIDs(in: entityName, context: context, predicate: predicate, sortDescriptors: sortDescriptors)
    }

    /// Querys Core Data in a blazing fast way to retrieve an array of Core Data attributes.
    ///
    /// - parameter entityName:      The name of the entity to be queried.
    /// - parameter context:         The managed object context.
    /// - parameter predicate:  The predicate used to filter the result.
    /// - parameter sortDescriptors: The sort descriptors used to filter the result.
    ///
    /// - returns: An array of Core Data attributes.
    public class func attributes(in entityName: String, named attributeName: String, context: NSManagedObjectContext) -> [Any] {
        return self.generateAttributes(in: entityName, named: attributeName, context: context, predicate: nil, sortDescriptors: nil)
    }

    /// Querys Core Data in a blazing fast way to retrieve an array of Core Data attributes.
    ///
    /// - parameter entityName:      The name of the entity to be queried.
    /// - parameter context:         The managed object context.
    /// - parameter predicate:  The predicate used to filter the result.
    ///
    /// - returns: An array of Core Data attributes.
    public class func attributes(in entityName: String, named attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate) -> [Any] {
        return self.generateAttributes(in: entityName, named: attributeName, context: context, predicate: predicate, sortDescriptors: nil)
    }

    /// Querys Core Data in a blazing fast way to retrieve an array of Core Data attributes.
    ///
    /// - parameter entityName:      The name of the entity to be queried.
    /// - parameter context:         The managed object context.
    /// - parameter sortDescriptors: The sort descriptors used to filter the result.
    ///
    /// - returns: An array of Core Data attributes.
    public class func attributes(in entityName: String,named attributeName: String, context: NSManagedObjectContext, sortDescriptors: [NSSortDescriptor]) -> [Any] {
        return self.generateAttributes(in: entityName, named: attributeName, context: context, predicate: nil, sortDescriptors: sortDescriptors)
    }

    /// Querys Core Data in a blazing fast way to retrieve an array of Core Data attributes.
    ///
    /// - parameter entityName:      The name of the entity to be queried.
    /// - parameter context:         The managed object context.
    /// - parameter predicate:  The predicate used to filter the result.
    /// - parameter sortDescriptors: The sort descriptors used to filter the result.
    ///
    /// - returns: An array of Core Data attributes.
    public class func attributes(in entityName: String, named attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptors: [NSSortDescriptor]) -> [Any] {
        return self.generateAttributes(in: entityName, named: attributeName, context: context, predicate: predicate, sortDescriptors: sortDescriptors)
    }

    class func generateManagedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor]?) -> [AnyHashable: NSManagedObjectID] {
        var result = [AnyHashable: NSManagedObjectID]()

        context.performAndWait {
            let expression = NSExpressionDescription()
            expression.name = "objectID"
            expression.expression = NSExpression.expressionForEvaluatedObject()
            expression.expressionResultType = .objectIDAttributeType

            let request = NSFetchRequest<NSDictionary>(entityName: entityName)
            request.predicate = predicate
            request.resultType = .dictionaryResultType
            request.propertiesToFetch = [expression, attributeName]
            request.sortDescriptors = sortDescriptors

            do {
                let objects = try context.fetch(request)
                for object in objects {
                    let fetchedID = object[attributeName] as! NSObject
                    let objectID = object["objectID"] as! NSManagedObjectID

                    if let _ = result[fetchedID] {
                        context.delete(context.object(with: objectID))
                    } else {
                        result[fetchedID] = objectID
                    }
                }
            } catch let error as NSError {
                print("error: \(error)")
            }
        }

        return result
    }

    class func generateManagedObjectIDs(in entityName: String, context: NSManagedObjectContext, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor]?) -> [NSManagedObjectID] {
        var objectIDs = [NSManagedObjectID]()

        context.performAndWait {
            let request = NSFetchRequest<NSManagedObjectID>(entityName: entityName)
            request.predicate = predicate;
            request.resultType = .managedObjectIDResultType

            do {
                objectIDs = try context.fetch(request)
            } catch let error as NSError {
                print("error: \(error)")
            }
        }

        return objectIDs
    }

    class func generateAttributes(in entityName: String, named attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor]?) -> [Any] {
        var attributes = [Any]()

        context.performAndWait {
            let expression = NSExpressionDescription()
            expression.name = "objectID"
            expression.expression = NSExpression.expressionForEvaluatedObject()
            expression.expressionResultType = .objectIDAttributeType

            let request = NSFetchRequest<NSDictionary>(entityName: entityName)
            request.predicate = predicate
            request.resultType = .dictionaryResultType
            request.propertiesToFetch = [expression, attributeName]
            request.sortDescriptors = sortDescriptors

            do {
                let objects = try context.fetch(request)
                for object in objects {
                    if let fetchedID = object[attributeName] {
                        attributes.append(fetchedID)
                    }
                }
            } catch let error as NSError {
                print("error: \(error)")
            }
        }

        return attributes
    }
}
