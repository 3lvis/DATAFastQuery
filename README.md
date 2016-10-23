# DATAFastQuery

[![Version](https://img.shields.io/cocoapods/v/DATAFastQuery.svg?style=flat)](http://cocoadocs.org/docsets/DATAFastQuery)
[![License](https://img.shields.io/cocoapods/l/DATAFastQuery.svg?style=flat)](http://cocoadocs.org/docsets/DATAFastQuery)
[![Platform](https://img.shields.io/cocoapods/p/DATAFastQuery.svg?style=flat)](http://cocoadocs.org/docsets/DATAFastQuery)

Simple and lightweight library to query Core Data if a blazing fast way.

## Usage

Dictionary of any attribute as key and NSManagedObjectID as values.

```swift
public class func managedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext) -> [AnyHashable : NSManagedObjectID]

public class func managedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate?) -> [AnyHashable : NSManagedObjectID]

public class func managedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext, sortDescriptor: NSSortDescriptor) -> [AnyHashable : NSManagedObjectID]

public class func managedObjectIDs(in entityName: String, usingAsKey attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptor: NSSortDescriptor) -> [AnyHashable : NSManagedObjectID]
```

Array of NSManagedObjectIDs.

```swift
public class func managedObjectIDs(in entityName: String, context: NSManagedObjectContext) -> [NSManagedObjectID]

public class func managedObjectIDs(in entityName: String, context: NSManagedObjectContext, predicate: NSPredicate) -> [NSManagedObjectID]

public class func managedObjectIDs(in entityName: String, context: NSManagedObjectContext, sortDescriptor: NSSortDescriptor) -> [NSManagedObjectID]

public class func managedObjectIDs(in entityName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptor: NSSortDescriptor) -> [NSManagedObjectID]
```

Array of any attributes.

```swift
public class func attributes(in entityName: String, named attributeName: String, context: NSManagedObjectContext) -> [Any]

public class func attributes(in entityName: String, named attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate) -> [Any]

public class func attributes(in entityName: String, named attributeName: String, context: NSManagedObjectContext, sortDescriptor: NSSortDescriptor) -> [Any]

public class func attributes(in entityName: String, named attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptor: NSSortDescriptor) -> [Any]
```

## Installation

**DATAFastQuery** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DATAFastQuery'
```

## Author

SyncDB, syncdb.contact@gmail.com

## License

**DATAFastQuery** is available under the MIT license. See the LICENSE file for more info.
