@import XCTest;

#import "NSManagedObject+ANDYObjectIDs.h"

#import "User.h"

#import "DATAStack.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testDictionary
{
    XCTestExpectation *expectation = [self expectationWithDescription:@"Saving expectations"];

    DATAStack *stack = [[DATAStack alloc] initWithModelName:@"Tests"
                                                     bundle:[NSBundle bundleForClass:[self class]]
                                                  storeType:DATAStackInMemoryStoreType];

    [stack performInNewBackgroundThreadContext:^(NSManagedObjectContext *context) {
        User *user = [NSEntityDescription insertNewObjectForEntityForName:@"User"
                                                   inManagedObjectContext:context];
        user.remoteID = @1;
        user.name = @"Joshua Ivanof";

        NSError *error = nil;
        if (![context save:&error]) {
            NSLog(@"error saving: %@", error);
            abort();
        }

        NSDictionary *dictionary = [NSManagedObject andy_dictionaryOfIDsAndFetchedIDsInContext:context
                                                                                 usingLocalKey:@"remoteID"
                                                                                 forEntityName:@"User"];

        XCTAssertNotNil(dictionary);
        XCTAssertTrue(dictionary.count == 1);
        XCTAssertEqualObjects(dictionary[@1], user.objectID);

        NSManagedObjectID *objectID = dictionary[@1];
        User *retreivedUser = (User *)[context objectWithID:objectID];
        XCTAssertEqualObjects(retreivedUser.remoteID, @1);

        [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:5.0f handler:nil];
}

@end
