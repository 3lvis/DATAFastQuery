@import XCTest;

#import "NSManagedObject+ANDYObjectIDs.h"

#import "User.h"

#import "DATAStack.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testSampleTest
{
    DATAStack *stack = [[DATAStack alloc] initWithModelName:@"Model"
                                                     bundle:[NSBundle bundleForClass:[self class]]
                                                  storeType:DATAStackInMemoryStoreType];
    XCTAssertNotNil(stack);

    NSManagedObjectContext *context = [stack mainThreadContext];

    User *user = [NSEntityDescription insertNewObjectForEntityForName:@"User"
                                               inManagedObjectContext:context];
    user.remoteID = @1;
    user.name = @"Joshua Ivanof";

    NSError *saveError = nil;
    if (![context save:&saveError]) {
        NSLog(@"Error: %@", saveError);
        abort();
    }

    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"User"];

    NSError *fetchError = nil;
    NSArray *users = [context executeFetchRequest:request error:&fetchError];
    if (fetchError) NSLog(@"error fetching IDs: %@", [fetchError description]);

    XCTAssertEqual(users.count, 1);
}

@end
