# DATAFastQuery

[![Version](https://img.shields.io/cocoapods/v/DATAFastQuery.svg?style=flat)](http://cocoadocs.org/docsets/DATAFastQuery)
[![License](https://img.shields.io/cocoapods/l/DATAFastQuery.svg?style=flat)](http://cocoadocs.org/docsets/DATAFastQuery)
[![Platform](https://img.shields.io/cocoapods/p/DATAFastQuery.svg?style=flat)](http://cocoadocs.org/docsets/DATAFastQuery)

Simple and lightweight library to query Core Data if a blazing fast way.

## Usage

Dictionary of any attribute as key and NSManagedObjectID as values.

```swift
let dictionary = DATAFastQuery.managedObjectIDs(in: "User", usingAsKey: "remoteID", context: context)
```

Array of NSManagedObjectIDs.

```swift
let managedObjectIDs = DATAFastQuery.managedObjectIDs(in: "User", context: context)
```

Array of any attributes.

```swift
let attributes = DATAFastQuery.attributes(in: "User", named: "localID", context: context, sortDescriptors: [NSSortDescriptor(key: "localID", ascending: true)])
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
