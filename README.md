# DATAObjectIDs

[![Version](https://img.shields.io/cocoapods/v/DATAObjectIDs.svg?style=flat)](http://cocoadocs.org/docsets/DATAObjectIDs)
[![License](https://img.shields.io/cocoapods/l/DATAObjectIDs.svg?style=flat)](http://cocoadocs.org/docsets/DATAObjectIDs)
[![Platform](https://img.shields.io/cocoapods/p/DATAObjectIDs.svg?style=flat)](http://cocoadocs.org/docsets/DATAObjectIDs)

## Usage

```swift
public class func objectIDs(inEntityNamed entityName: String, withAttributesNamed attributeName: String, context: NSManagedObjectContext) -> [AnyHashable : NSManagedObjectID]

public class func objectIDs(inEntityNamed entityName: String, withAttributesNamed attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate?) -> [AnyHashable : NSManagedObjectID]

public class func objectIDs(inEntityNamed entityName: String, withAttributesNamed attributeName: String, context: NSManagedObjectContext, sortDescriptors: [NSSortDescriptor]) -> [AnyHashable : NSManagedObjectID]

public class func objectIDs(inEntityNamed entityName: String, withAttributesNamed attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptors: [NSSortDescriptor]) -> [AnyHashable : NSManagedObjectID]

public class func objectIDs(inEntityNamed entityName: String, context: NSManagedObjectContext) -> [NSManagedObjectID]

public class func objectIDs(inEntityNamed entityName: String, context: NSManagedObjectContext, predicate: NSPredicate) -> [NSManagedObjectID]

public class func objectIDs(inEntityNamed entityName: String, context: NSManagedObjectContext, sortDescriptors: [NSSortDescriptor]) -> [NSManagedObjectID]

public class func objectIDs(inEntityNamed entityName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptors: [NSSortDescriptor]) -> [NSManagedObjectID]

public class func attributes(inEntityNamed entityName: String, attributeName: String, context: NSManagedObjectContext) -> [Any]

public class func attributes(inEntityNamed entityName: String, attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate) -> [Any]

public class func attributes(inEntityNamed entityName: String, attributeName: String, context: NSManagedObjectContext, sortDescriptors: [NSSortDescriptor]) -> [Any]

public class func attributes(inEntityNamed entityName: String, attributeName: String, context: NSManagedObjectContext, predicate: NSPredicate, sortDescriptors: [NSSortDescriptor]) -> [Any]
```

## Installation

**DATAObjectIDs** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DATAObjectIDs'
```

## Author

SyncDB, syncdb.contact@gmail.com

## License

**DATAObjectIDs** is available under the MIT license. See the LICENSE file for more info.
