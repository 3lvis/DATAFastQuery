import UIKit
import DATAStack
import XCTest

class DATAFastQueryTests: XCTestCase {
    func insertUserWithRemoteID(remoteID: NSNumber?, localID: String?, name: String, context: NSManagedObjectContext) -> User {
        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context) as! User
        user.remoteID = remoteID
        user.localID = localID
        user.name = name

        return user
    }

    func configureUserWithRemoteID(remoteID: NSNumber?, localID: String?, name: String, block: @escaping (_ user: User, _ context: NSManagedObjectContext) -> Void) {
        let stack = DATAStack(modelName: "Tests", bundle: Bundle(for: DATAFastQueryTests.self), storeType: .inMemory)
        stack.performInNewBackgroundContext { context in
            let user = self.insertUserWithRemoteID(remoteID: remoteID, localID: localID, name: name, context: context)
            try! context.save()
            block(user, context)
        }
    }

    func testDictionary() {
        self.configureUserWithRemoteID(remoteID: 1, localID: nil, name: "Joshua") { user, context in
            let dictionary = DATAFastQuery.managedObjectIDs(in: "User", usingAsKey: "remoteID", context: context)
            XCTAssertNotNil(dictionary)
            XCTAssertTrue(dictionary.count == 1)
            XCTAssertEqual(dictionary[NSNumber(value: 1)], user.objectID)

            let objectID = dictionary[NSNumber(value: 1)]!
            let retreivedUser = context.object(with: objectID) as! User
            XCTAssertEqual(retreivedUser.remoteID, 1);
            XCTAssertEqual(retreivedUser.name, "Joshua");
        }
    }

    func testDictionaryStringLocalKey() {
        self.configureUserWithRemoteID(remoteID: nil, localID: "100", name: "Joshua") { user, context in
            let dictionary = DATAFastQuery.managedObjectIDs(in: "User", usingAsKey: "localID", context: context)
            XCTAssertNotNil(dictionary)
            XCTAssertTrue(dictionary.count == 1)
            XCTAssertEqual(dictionary["100"], user.objectID);

            let objectID = dictionary["100"]!
            let retreivedUser = context.object(with: objectID) as! User
            XCTAssertEqual(retreivedUser.localID, "100")
            XCTAssertEqual(retreivedUser.name, "Joshua")
        }
    }

    func testmanagedObjectIDsArray() {
        self.configureUserWithRemoteID(remoteID: 1, localID: nil, name: "Joshua") { user, context in
            let managedObjectIDs = DATAFastQuery.managedObjectIDs(in: "User", context: context)
            XCTAssertEqual(managedObjectIDs.count, 1);
            XCTAssertEqual(managedObjectIDs.first, user.objectID)
        }
    }

    func testmanagedObjectIDsArrayWithPredicate() {
        let stack = DATAStack(modelName: "Tests", bundle: Bundle(for: DATAFastQueryTests.self), storeType: .inMemory)
        let _ = self.insertUserWithRemoteID(remoteID: 1, localID: nil, name: "Joshua", context: stack.mainContext)
        let jon = self.insertUserWithRemoteID(remoteID: 2, localID: nil, name: "Jon", context: stack.mainContext)

        let predicate = NSPredicate(format: "name == 'Jon'")
        let managedObjectIDs = DATAFastQuery.managedObjectIDs(in: "User", context: stack.mainContext, predicate: predicate)
        XCTAssertEqual(managedObjectIDs.count, 1)
        XCTAssertEqual(managedObjectIDs.first, jon.objectID)
    }

    func testDictionaryStringLocalKeyUsingSortDescriptor() {
        let stack = DATAStack(modelName: "Tests", bundle: Bundle(for: DATAFastQueryTests.self), storeType: .inMemory)
        stack.performInNewBackgroundContext { context in
            let _ = self.insertUserWithRemoteID(remoteID: nil, localID: "100", name: "Joshua", context: context)
            let _ = self.insertUserWithRemoteID(remoteID: nil, localID: "200", name: "Jon", context: context)
            try! context.save()

            let attributesA = DATAFastQuery.attributes(in: "User", named: "localID", context: context, sortDescriptor: NSSortDescriptor(key: "localID", ascending: true))
            XCTAssertEqual(attributesA.first as? String, "100")

            let attributesB = DATAFastQuery.attributes(in: "User", named: "localID", context: context, sortDescriptor: NSSortDescriptor(key: "localID", ascending: false))
            XCTAssertEqual(attributesB.first as? String, "200")
        }
    }
}
